#!/bin/sh

# crawl zh/en tidb-in-kubernetes
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-in-kubernetes-dev.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-in-kubernetes-v1.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-in-kubernetes-v1.1.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-in-kubernetes-v1.2.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-in-kubernetes-dev.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-in-kubernetes-v1.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-in-kubernetes-v1.1.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-in-kubernetes-v1.2.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1

# crawl zh/en tidb-data-migration
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-data-migration-dev.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-data-migration-v1.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-data-migration-v2.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-data-migration-dev.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-data-migration-v1.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-data-migration-v2.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1

# crawl zh dev-guide
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-dev-guide-dev.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1

# crawl en tidbcloud
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidbcloud-public-preview.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1

# # crawl en tidb
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-dev.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-v5.2.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-v5.1.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-v5.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-v4.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-v3.1.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-v3.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/en-tidb-v2.1.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1

# # crawl zh tidb
docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-dev.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-v5.2.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-v5.1.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-v5.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-v4.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-v3.1.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-v3.0.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1
# docker run -it --env-file=.env -e "CONFIG=$(cat /PATH/TO/CONFIGS/algolia_configs/zh-tidb-v2.1.json | jq -r tostring)" -e  "ISINCREMENTAL=True" -v /PATH/TO/CONFIGS/algolia_configs:/data hub-new.pingcap.net/xuyini/algolia-docsearch-scraper-incremental:v0.1

