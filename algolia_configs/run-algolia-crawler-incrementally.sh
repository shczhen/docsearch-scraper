#!/bin/sh

# crawl zh/en tidb-in-kubernetes
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-in-kubernetes-dev.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-in-kubernetes-v1.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-in-kubernetes-v1.1.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-in-kubernetes-v1.2.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-in-kubernetes-dev.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-in-kubernetes-v1.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-in-kubernetes-v1.1.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-in-kubernetes-v1.2.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search

# crawl zh/en tidb-data-migration
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-data-migration-dev.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-data-migration-v1.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-data-migration-v2.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-data-migration-dev.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-data-migration-v1.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-data-migration-v2.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search

# crawl zh dev-guide
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-dev-guide-dev.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search

# crawl en tidbcloud
/usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidbcloud-public-preview.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search

# # crawl en tidb
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-dev.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v5.2.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v5.1.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v5.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v4.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v3.1.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v3.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v2.1.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search

# # crawl zh tidb
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-dev.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v5.2.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v5.1.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v5.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v4.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v3.1.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v3.0.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search
# /usr/local/bin/docker run -i --env-file=/Users/yinixu/pingcap/docsearch-scraper/.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v2.1.json | /usr/local/bin/jq -r tostring)" -e  "ISINCREMENTAL=True"  algolia/docsearch-scraper-incremental --rm algolia-search

