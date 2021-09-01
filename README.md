# DocSearch scraper

This repository holds the code of the DocSearch scraper used to power the hosted
version of DocSearch.

If you're looking for a way to add DocSearch to your site, the easiest solution
is to [apply to DocSearch][1]. To run the scraper yourself, you're at the right
place.

## Run your own

```
git clone https://github.com/YiniXu9506/docsearch-scraper
cd docsearch-scaper
git check incrementalCrawl
```

## Set up your environment

create a .env file in the repository root.

```
APPLICATION_ID=YOUR_APP_ID
API_KEY=YOUR_API_KEY
```

### Running the crawler from the code base

This crawler can incrementally and fully update each index.

#### Installation

The scraper is a python tool [based on scrapy](https://scrapy.org/). We do recommend to use [pipenv](https://github.com/pypa/pipenv) to install the python environment.

- Clone the scraper repository.
- [Install pipenv](https://pipenv.readthedocs.io/en/latest/install/#installing-pipenv)
- `pipenv install`
- `pipenv shell`

#### Crawl fully

```
./docsearch run /PATH_TO_CONFIG_FILE/FILENAME.json
```

eg: `./docsearch run algolia_configs/zh-tidb-data-migration-dev.json`, crawler will save latest commit of branch `master` of repo `tidb-data-migration` in file `scraper/src/latest_commit.json`.

#### Crawl inrementally

```
./docsearch run /PATH_TO_CONFIG_FILE/FILENAME.json --is_incremental
```

eg. `./docsearch run algolia_configs/zh-tidb-data-migration-dev.json --is_incremental`, crawler will

1. find the base commit from file `scraper/src/latest_commit.json`
2. get the head commit of branch `master` of repo `tidb-data-migration`
3. save head commit as latest commit when the crawling done successfully.

### Crawl pages host by local server

Sometimes you want to crawl pages and store records before pages go to production, so you might need to serve a preview site for scraper to crawl and replace the URL with production URL.

Since the scraper cannot parse the url with port, like `http://localhost:9000`, we will render docs website on Netlify, and change siteURL to `https://docs-zh-preview.netlify.app/` (something like this) for sitemap url. You need to set values on config file.

1. set `crawl_local_url` to `https://docs-zh-preview.netlify.app`
2. change `sitemap_urls` value to `https://docs-zh-preview.netlify.app/sitemap.xml`

### Running the crawler from the docker image (Run on production)

#### Crawl fully

```
docker run -it --env-file=.env -e "CONFIG=$(cat /HOME_PATH/FILENAME.json | jq -r tostring)" xuyini/algolia-docsearch-scraper-incremental#### Crawl inrementally
```

```
docker run -it --env-file=.env -e "CONFIG=$(cat /HOME_PATH/FILENAME.json | jq -r tostring)" -e "ISINCREMENTAL=True" xuyini/algolia-docsearch-scraper-incremental
```

## Installation and Usage

Please check the [dedicated documentation][2] to see how you can install and
run DocSearch yourself.

This project supports Python 3.6+

## Related projects

DocSearch is made of 4 repositories:

- [algolia/DocSearch][3] contains the `docsearch.js` code source.
- [algolia/docsearch-configs][4] contains the JSON files representing all the
  configurations for all the documentations DocSearch is powering.
- [algolia/docsearch-scraper][5] contains the scraper we use to extract data
  from your documentation. The code is open source and you can run it from a
  Docker image.
- [algolia/docsearch-website][6] contains the documentation website.

[1]: https://docsearch.algolia.com/
[2]: https://docsearch.algolia.com/docs/run-your-own
[3]: https://github.com/algolia/docsearch
[4]: https://github.com/algolia/docsearch-configs
[5]: https://github.com/algolia/docsearch-scraper
[6]: https://github.com/algolia/docsearch-website
