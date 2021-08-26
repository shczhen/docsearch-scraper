# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/en-tidb.json | jq -r tostring)" algolia/docsearch-scraper
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/en-tidb-data-migration.json | jq -r tostring)" algolia/docsearch-scraper
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/en-tidb-in-kubernetes.json | jq -r tostring)" algolia/docsearch-scraper
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/en-tidbcloud.json | jq -r tostring)" algolia/docsearch-scraper
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/zh-tidb.json | jq -r tostring)" algolia/docsearch-scraper
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/zh-tidb-data-migration.json | jq -r tostring)" algolia/docsearch-scraper
# docker run -it --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/zh-tidb-in-kubernetes.json | jq -r tostring)" algolia/docsearch-scraper

./docsearch run ./aloglia_configs/en-tidb-dev.json
./docsearch run ./aloglia_configs/en-tidb-stable.json
./docsearch run ./aloglia_configs/en-tidb-v2.1.json
./docsearch run ./aloglia_configs/en-tidb-v3.0.json
./docsearch run ./aloglia_configs/en-tidb-v3.1.json
./docsearch run ./aloglia_configs/en-tidb-v4.0.json
./docsearch run ./aloglia_configs/en-tidb-v5.0.json
./docsearch run ./aloglia_configs/zh-tidb-dev.json
./docsearch run ./aloglia_configs/zh-tidb-stable.json
./docsearch run ./aloglia_configs/zh-tidb-v2.1.json
./docsearch run ./aloglia_configs/zh-tidb-v3.0.json
./docsearch run ./aloglia_configs/zh-tidb-v3.1.json
./docsearch run ./aloglia_configs/zh-tidb-v4.0.json
./docsearch run ./aloglia_configs/zh-tidb-v5.0.json