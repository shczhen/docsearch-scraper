# DocSearch configurations

## docs(zh)

Files with prefix `zh-` are config files for Chinese docs. The formate of index is `website-docs-zh-<DOCS_TYPE>`, each index will store all versions of the corresponding docs_type.

## docs(en)

Files with prefix `en-` are config files for English docs. The formate of index is `en-<VERSION>`, each index will store all types of docs in this version.

## run aloglia crawler

docker run -it --env-file=.env -e "CONFIG=$(cat /HOME_PATH/FILENAME.json | jq -r tostring)" algolia/docsearch-scraper