"""AlgoliaHelper
Wrapper on top of the AlgoliaSearch API client"""

from algoliasearch.search_client import SearchClient

from builtins import range


class AlgoliaHelper:
    """AlgoliaHelper"""

    def __init__(self, app_id, api_key, index_name, index_name_tmp, settings, query_rules, isIncremental):
        self.algolia_client = SearchClient.create(app_id, api_key)
        self.index_name = index_name
        self.algolia_index = self.algolia_client.init_index(self.index_name)

        # if incremental crawl, then will not replace index
        # otherwise, have to set a tmp index, and replace it when crawl successfully
        if isIncremental:
            self.executable_algolia_index = self.algolia_index
        else:
            self.index_name_tmp = index_name_tmp
            self.algolia_index_tmp = self.algolia_client.init_index(
                self.index_name_tmp)
            self.algolia_client.copy_rules(
                self.index_name,
                self.index_name_tmp
            )
            self.executable_algolia_index = self.algolia_index_tmp

        self.executable_algolia_index.set_settings(settings)

        if len(query_rules) > 0:
            self.executable_algolia_index.save_rules(query_rules, True, True)

    def add_records(self, records, url, from_sitemap):
        """Add new records to the temporary index"""
        record_count = len(records)

        for i in range(0, record_count, 50):
            self.executable_algolia_index.save_objects(records[i:i + 50])

        color = "96" if from_sitemap else "94"

        print(
            '\033[{}m> DocSearch: \033[0m{}\033[93m {} records\033[0m)'.format(
                color, url, record_count))

    # delete record by using api `delete_by`
    # more details see: https://www.algolia.com/doc/api-reference/api-parameters/filters/
    def delete_records(self, delete_urls):
        filter = ""
        for url in delete_urls:
            filter = filter + "url_without_anchor:\"" + url + "\" OR "

        self.executable_algolia_index.delete_by({
            'filters': filter[:-4]
        })

    def add_synonyms(self, synonyms):
        synonyms_list = []
        for _, value in list(synonyms.items()):
            synonyms_list.append(value)

        self.executable_algolia_index.save_synonyms(synonyms_list)
        print(
            '\033[94m> DocSearch: \033[0m Synonyms (\033[93m{} synonyms\033[0m)'.format(
                len(synonyms_list)))

    def commit_tmp_index(self):
        """Overwrite the real index with the temporary one"""
        # print("Update settings")
        self.algolia_client.move_index(self.index_name_tmp, self.index_name)
