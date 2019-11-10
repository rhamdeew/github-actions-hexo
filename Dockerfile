FROM node:12-alpine

LABEL "name"="hexo-github-action"
LABEL "maintainer"="yrpang <yrpang@outlook.com>"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="Hexo GitHub Action"
LABEL "com.github.actions.description"="A GitHub action used to automatic generate and deploy hexo-based blog."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

COPY README.md LICENSE entrypoint.sh /

RUN apk add --no-cache \
    git \
    openssh \
    curl \    
    autoconf \
    automake \
    gcc \
    g++ \
    zlib-dev \
    libtool \
    make \
    nasm

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
