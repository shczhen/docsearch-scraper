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
            "name": "is_incremental",
            "description": "crawl an index incrementally",
            "optional": False
        }
        ]
        return options

    def run(self, args):
        from scraper.src.index import run_config
        import re

        is_incremental = False

        is_incremental = "--is_incremental" in args

        self.check_not_docsearch_app_id("run a config manually")
        return run_config(args[0], is_incremental)
