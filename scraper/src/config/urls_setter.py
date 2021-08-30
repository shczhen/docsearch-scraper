from scraper.src.config.latest_commit_handler import UpdateLatestCommit
import requests
import json
import os


class URLSetter:
    """URLSetter"""
    docs_repo = None
    docs_version = None
    docs_owner = None
    docs_lang = None
    docs_url_prefix = None
    is_incremental = None
    GITHUT_API_BASE_URL = 'https://api.github.com/repos/'
    DOCS_WEBSITE_BASE_URL = ''
    DOCS_REPO_WITHOUT_LANG_PATH = [
        'docs',
        'docs-cn',
        'dbass-docs'
    ]
    IGNORE_FILES = ['TOC.md', 'README.md']

    def __init__(self, docs_info, isIncremntal, crawl_local_url):
        self.docs_repo = docs_info['docs_repo']
        self.docs_version = docs_info['version']
        self.docs_owner = docs_info['owner']
        self.docs_lang = 'zh/' if docs_info['lang'] == 'zh' else ''
        self.docs_url_prefix = docs_info['docs_prefix']
        self.is_incremental = isIncremntal
        self.crawl_local_url = crawl_local_url
        self.DOCS_WEBSITE_BASE_URL = self.crawl_local_url['base_url'] if self.crawl_local_url['is_crawl_local_url'] else 'https://docs.pingcap.com/'
        self.update_latest_commit = UpdateLatestCommit(docs_info)

    def gen_url(self, filename):
        url_base = '' if os.path.basename(
            filename) == '_index.md' else os.path.basename(
                filename.replace('.md', ''))
        url = self.DOCS_WEBSITE_BASE_URL + self.docs_lang + self.docs_url_prefix + '/' + self.docs_version + '/' + url_base

        return url

    def diff_files(self):
        headers = {
            'Accept': 'application/vnd.github.v3+json',
            'Authorization': 'token ' + os.environ.get('GITHUB_AUTH_TOKEN')
        }
        start_urls = []
        delete_urls = []


        if self.is_incremental:
            print('inside incremental...')
            base_commit = self.update_latest_commit.get_base_commit()
            head_commit = self.update_latest_commit.get_head_commit()

            git_commit_compare_url = self.GITHUT_API_BASE_URL + self.docs_owner + '/' + self.docs_repo + '/compare/' + base_commit + '...' + head_commit
            print('url=============', git_commit_compare_url)
            resp = requests.get(git_commit_compare_url, headers=headers)
            json_text = json.loads(resp.text)
            files = json_text['files']

            for file in files:
                filename = file['filename']
                file_status = file['status']

                if not filename.endswith('.md') or os.path.basename(filename) in self.IGNORE_FILES:
                    print('not md')
                    continue

                print('filename: ', filename.startswith(self.docs_lang), self.docs_lang)
                if self.docs_repo not in self.DOCS_REPO_WITHOUT_LANG_PATH and not filename.startswith(self.docs_lang):
                    print('not')
                    continue

                if file_status == 'renamed':
                    previous_filename = file['previous_filename']
                    delete_urls.append(
                        self.gen_url(previous_filename))
                    start_urls.append(
                        self.gen_url(filename))

                elif file_status == 'removed':
                    delete_urls.append(
                        self.gen_url(filename))

                elif file_status == 'added':
                    start_urls.append(self.gen_url(filename))

                elif file['status'] == 'modified':
                    delete_urls.append(
                        self.gen_url(filename))
                    start_urls.append(
                        self.gen_url(filename))

        else:
            print('inside update base commit')
            head_commit = self.update_latest_commit.update_base_commit()

            start_url = self.DOCS_WEBSITE_BASE_URL + self.docs_lang + self.docs_url_prefix + '/' + self.docs_version + '/'
            start_urls.append(start_url)
            delete_urls = []

        print('starturl\n', len(start_urls), start_urls)
        print('\n')
        print('delete_urls\n', len(delete_urls), delete_urls)

        return start_urls, delete_urls
