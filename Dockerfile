FROM ghcr.io/pchynoweth-ovation/docker-clang:latest

RUN apk add --no-cache bash

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
