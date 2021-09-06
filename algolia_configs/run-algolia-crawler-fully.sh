# # crawl zh/en tidb-in-kubernetes
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-in-kubernetes-dev.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# # docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-in-kubernetes-v1.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# # docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-in-kubernetes-v1.1.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-in-kubernetes-v1.2.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-in-kubernetes-dev.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# # docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-in-kubernetes-v1.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# # docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-in-kubernetes-v1.1.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-in-kubernetes-v1.2.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental

# # crawl zh/en tidb-data-migration
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-data-migration-dev.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# # docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-data-migration-v1.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-data-migration-v2.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-data-migration-dev.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# # docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-data-migration-v1.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-data-migration-v2.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental

# # crawl zh dev-guide
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-dev-guide-dev.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental

# # crawl en tidbcloud
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidbcloud-public-preview.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental

# crawl en tidb
docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-dev.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v5.2.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v5.1.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v5.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v4.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v3.1.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v3.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/en-tidb-v2.1.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental

# # crawl zh tidb
docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-dev.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v5.2.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v5.1.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v5.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v4.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v3.1.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v3.0.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-scraper/algolia_configs/zh-tidb-v2.1.json | jq -r tostring)" -v /Users/yinixu/pingcap/docsearch-scraper/algolia_configs:/data algolia/docsearch-scraper-incremental

