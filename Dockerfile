FROM ubuntu:24.04

RUN apt-get update && apt-get install --no-install-recommends software-properties-common wget -y \
    && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key| apt-key add - \
    && add-apt-repository 'deb http://apt.llvm.org/mantic/ llvm-toolchain-mantic-18 main' \
    && apt-get update \
    && apt-get install -y --no-install-recommends clang-format-18  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-18 100

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
