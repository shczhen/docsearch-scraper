docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/en-tidb.json | jq -r tostring)" algolia/docsearch-scraper
docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/en-tidb-data-migration.json | jq -r tostring)" algolia/docsearch-scraper
docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/en-tidb-in-kubernetes.json | jq -r tostring)" algolia/docsearch-scraper
docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/en-tidbcloud.json | jq -r tostring)" algolia/docsearch-scraper
docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/zh-tidb.json | jq -r tostring)" algolia/docsearch-scraper
docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/zh-tidb-data-migration.json | jq -r tostring)" algolia/docsearch-scraper
docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/zh-tidb-in-kubernetes.json | jq -r tostring)" algolia/docsearch-scraper