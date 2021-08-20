import requests
import json
import os


class UpdateLatestCommit:
    """UpdateLatestCommit"""
    @staticmethod
    def get_base_head_commit(docs_info):
        headers = {'Accept': 'application/vnd.github.v3+json'}

        url = 'https://api.github.com/repos/pingcap/' + \
        docs_info['docs_repo'] + '/commits/' + docs_info['ref']

        print('url-------', url)

        resp = requests.get(url, headers=headers)
        json_text = json.loads(resp.text)
        latest_commit = json_text['sha']


        with open('/Users/yinixu/pingcap/docsearch-scraper/aloglia_configs/latest_commit.json', 'r') as f:
            data = json.load(f)
            docs_index = docs_info['lang'] + '-' + docs_info['docs_repo'] + '-' + docs_info['ref']
            head_commit = data[docs_index]
            print('read docs_index', data, docs_index)
            f.close()

        with open('/Users/yinixu/pingcap/docsearch-scraper/aloglia_configs/latest_commit.json', 'w') as f:
            data[docs_index] = latest_commit
            print('write docs_index', data, docs_index)
            json.dump(data, f)
            f.close()

        return  head_commit, latest_commit


        @staticmethod
        def add_new_index_head_commit(docs_info):
            with open('/Users/yinixu/pingcap/docsearch-scraper/aloglia_configs/latest_commit.json', 'w') as f: