from .latest_commit_handler import UpdateLatestCommit
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
    is_incremental = False
    file_start_with_lang = None
    CRAWL_LOCAL_URL = ''
    GITHUT_API_BASE_URL = 'https://api.github.com/repos/'
    DOCS_WEBSITE_BASE_URL = ''
    DOCS_REPO_WITHOUT_LANG_PATH = ['docs', 'docs-cn', 'dbass-docs']
    IGNORE_FILES = ['TOC.md', 'README.md']

    def __init__(self, docs_info, isIncremntal, crawl_local_url):
        self.docs_repo = docs_info['docs_repo']
        self.docs_version = 'stable' if (
            'isStable' in docs_info.keys()
            and docs_info['isStable']) else docs_info['version']
        self.docs_owner = docs_info['owner']
        self.docs_lang = docs_info['lang']
        if self.docs_repo not in self.DOCS_REPO_WITHOUT_LANG_PATH:
            self.file_start_with_lang = docs_info['lang'] + '/'

        self.docs_url_prefix = docs_info['docs_prefix']
        self.is_incremental = isIncremntal
        self.crawl_local_url = crawl_local_url
        self.DOCS_WEBSITE_BASE_URL = self.crawl_local_url if self.crawl_local_url != '' else 'https://docs.pingcap.com/'
        self.update_latest_commit = UpdateLatestCommit(docs_info)

    def gen_url(self, filename):
        lang = '' if self.docs_lang == 'en' else 'zh/'
        url_base = '' if os.path.basename(
            filename) == '_index.md' else os.path.basename(
                filename.replace('.md', ''))
        url = self.DOCS_WEBSITE_BASE_URL + lang + self.docs_url_prefix + \
            '/' + self.docs_version + '/' + url_base

        return url

    def diff_files(self):
        headers = {
            'Accept': 'application/vnd.github.v3+json',
            'Authorization': 'token ' + os.environ.get('GITHUB_AUTH_TOKEN', '')
        }
        start_urls = []
        delete_urls = []

        if self.is_incremental:
            print('***incremental update***')
            base_commit = self.update_latest_commit.get_base_commit()
            head_commit = self.update_latest_commit.get_head_commit()

            git_commit_compare_url = self.GITHUT_API_BASE_URL + self.docs_owner + \
                '/' + self.docs_repo + '/compare/' + base_commit + '...' + head_commit
            print('git_commit_compare_url', git_commit_compare_url)
            resp = requests.get(git_commit_compare_url, headers=headers)
            json_text = json.loads(resp.text)
            files = json_text['files']

            for file in files:
                filename = file['filename']
                file_status = file['status']

                if not filename.endswith('.md') or os.path.basename(
                        filename) in self.IGNORE_FILES:
                    continue

                if self.docs_repo not in self.DOCS_REPO_WITHOUT_LANG_PATH and not filename.startswith(
                        self.file_start_with_lang):
                    continue

                if file_status == 'renamed':
                    previous_filename = file['previous_filename']
                    delete_urls.append(self.gen_url(previous_filename))
                    start_urls.append(self.gen_url(filename))

                elif file_status == 'removed':
                    delete_urls.append(self.gen_url(filename))

                elif file_status == 'added':
                    start_urls.append(self.gen_url(filename))

                elif file['status'] == 'modified':
                    _filename = self.gen_url(filename)
                    delete_urls.append(_filename)
                    start_urls.append(_filename)

        else:
            print('***fully update***')
            lang = '' if self.docs_lang == 'en' else 'zh/'
            start_url = self.DOCS_WEBSITE_BASE_URL + lang + \
                self.docs_url_prefix + '/' + self.docs_version + '/'
            start_urls.append(start_url)
            delete_urls = []

        return start_urls, delete_urls
