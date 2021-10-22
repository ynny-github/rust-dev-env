FROM rust:1.56

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
    apt install -y --no-install-recommends \
    fish \
    git \
    curl
# setup home environment
RUN curl https://raw.githubusercontent.com/ynny-github/Home-Env/main/init.sh | bash
