FROM algolia/docsearch-scraper-base
LABEL maintainer="xuyini@pingcap.com"

WORKDIR /root
COPY scraper/src ./src

ENTRYPOINT ["pipenv", "run", "python", "-m", "src.index"]
