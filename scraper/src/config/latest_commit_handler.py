import requests
import json
import os


class UpdateLatestCommit:
    """UpdateLatestCommit"""
    docs_repo = None
    docs_version = None
    docs_owner = None
    docs_ref = None
    docs_lang = None
    docs_url_prefix = None
    GITHUT_API_BASE_URL = 'https://api.github.com/repos/'
    headers = {
        'Accept': 'application/vnd.github.v3+json',
        'Authorization': 'token ' + os.environ.get('GITHUB_AUTH_TOKEN', '')
    }

    def __init__(self, docs_info):
        self.docs_repo = docs_info['docs_repo']
        self.docs_version = docs_info['version']
        self.docs_owner = docs_info['owner']
        self.docs_lang = docs_info['lang']
        self.docs_ref = docs_info['ref']
        self.docs_url_prefix = docs_info['docs_prefix']
        dirname = os.path.dirname(__file__)
        self.latest_commit_file = dirname + '/../latest_commit.json'

    def get_base_commit(self):
        with open(self.latest_commit_file, 'r') as f:
            data = json.load(f)
            docs_index = self.docs_lang + '-' + self.docs_url_prefix + '-' + self.docs_version
            base_commit = data[docs_index]

        return base_commit

    def get_head_commit(self):
        url = self.GITHUT_API_BASE_URL + self.docs_owner + '/' + self.docs_repo + '/commits/' + self.docs_ref
        print('url', url)
        resp = requests.get(url, headers=self.headers)
        json_text = json.loads(resp.text)
        print('json_text', json_text['sha'])
        head_commit = json_text['sha']

        return head_commit

    def update_base_commit(self):
        print('updating base commit...')
        head_commit = self.get_head_commit()
        docs_index = self.docs_lang + '-' + self.docs_url_prefix + '-' + self.docs_version
        with open(self.latest_commit_file, 'r+') as f:
            try:
                data = json.load(f)
            except json.decoder.JSONDecodeError:
                print('open error...')
                "Get Error when file is empty"
                new_commit = {docs_index: head_commit}
                json.dump(new_commit, f)
            else:
                print('open successfully...')
                data[docs_index] = head_commit
                print('data', data)
                f.seek(0)
                json.dump(data, f, indent=4)
                f.truncate()
