from scraper.src.config.update_latest_commit import UpdateLatestCommit
import requests
import json

class URLSetter:
    """URLSetter"""

    def diff_files(docs_info):
        headers = {'Accept': 'application/vnd.github.v3+json'}

        base_commit, head_commit = UpdateLatestCommit.get_base_head_commit(docs_info)



        url = 'https://api.github.com/repos/pingcap/' + docs_info['docs_repo'] + '/compare/' + base_commit + '...' + head_commit
        print('url=============', url)
        resp = requests.get(url, headers=headers)
        json_text = json.loads(resp.text)
        print('json_text', json_text['files'])

        result = ['https://docs.pingcap.com/zh/dev-guide/dev/database-management']
        return result
