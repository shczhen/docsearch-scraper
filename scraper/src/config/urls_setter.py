import requests

class URLSetter:
    """URLSetter"""

    def diff_files():
        headers = {'Accept': 'application/vnd.github.v3+json'}
        url = 'https://api.github.com/repos/pingcap/dev-guide/compare/f3181c4e16537a373b145626c3b009bfec357e33...817c9e71363c1630a0f668f2669035ceffa19a02'
        payload = {''}
        # def __int__(self):
        r = requests.get(url, headers=headers)
        print('result', r)

        result = ['https://docs.pingcap.com/zh/dev-guide/dev/database-management']
        return result
