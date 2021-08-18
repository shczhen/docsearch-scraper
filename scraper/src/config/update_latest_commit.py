import requests
import json


class UpdateLatestCommit:
    """UpdateLatestCommit"""
    @staticmethod
    def get_base_head_commit(docs_info):
        latest_commit = UpdateLatestCommit.get_latest_commit(docs_info)
        head_commit = UpdateLatestCommit.get_base_commit()

        return latest_commit, head_commit

    @staticmethod
    def get_latest_commit(docs_info):
        print('docs_info', docs_info)
        headers = {'Accept': 'application/vnd.github.v3+json'}

        url = 'https://api.github.com/repos/pingcap/' + \
            docs_info.docs_repo + '/commits/' + docs_info.ref

        resp = requests.get(url, headers=headers)
        json_text = json.loads(resp.text)
        latest_sha = json_text['sha']
        print('json_text', latest_sha)

        with open('../../aloglia_configs/latest_commit.json', 'w') as fw:
            docs_index = docs_info.lang + '-' + docs_info.docs_repo + '-' + docs_info.ref
            data = '{' + docs_index + ': ' + latest_sha + '}'
            json.dump(data, fw)

        return latest_sha

    @staticmethod
    def get_base_commit():
        with open('../../aloglia_configs/latest_commit.json', 'r') as f:
            data = json.load(f)
            print('data-------', data.text)

        return data
