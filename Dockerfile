FROM ghcr.io/pchynoweth-ovation/docker-clang:main

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
