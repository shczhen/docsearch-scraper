from .abstract_command import AbstractCommand

class RunConfig(AbstractCommand):
    def get_name(self):
        return "run"

    def get_description(self):
        return "Run a config"

    def get_usage(self):
        return super(RunConfig, self).get_usage() + " config"

    def get_options(self):
        options = super(RunConfig, self).get_options()

        options = [{
            "name": "config",
            "description": "path to the config to run"
        }, {
            "name": "is_crawl_local_url",
            "description": "crawl an index with local/preview base URL",
            "optional": True
        },{
            "name": "is_incremental",
            "description": "crawl an index incrementally",
            "optional": True
        }
        ]
        return options


    def run(self, args):
        # print('iscrawl', self.get_option("is_crawl_local_url", args))
        # print(self.get_option("is_incremental", args))
        # print(self.get_options())
        from scraper.src.index import run_config
        import re

        is_incremental = False
        crawl_local_url = {
            "is_crawl_local_url": False,
            "base_url": ''
        }

        is_incremental = "--is_incremental" in args
        is_crawl_local_url_list = [arg for arg in args if re.search('--is_crawl_local_url', arg)]
        if len(is_crawl_local_url_list) > 0:
            print('is crawl', is_crawl_local_url_list[0], is_crawl_local_url_list[0].split('=')[1])
            crawl_local_url["is_crawl_local_url"] = True
            crawl_local_url["base_url"] = is_crawl_local_url_list[0].split('=')[1] + ('/' if not is_crawl_local_url_list[0].split('=')[1].endswith('/') else '')

        print("args", args, is_incremental, crawl_local_url)

        self.check_not_docsearch_app_id("run a config manually")
        return run_config(args[0], is_incremental, crawl_local_url)
