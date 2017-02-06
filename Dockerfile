FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.0

RUN gem install couchproxy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["couchproxy"]
CMD ["--help"]
