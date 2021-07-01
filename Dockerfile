FROM ruby:3.0.1-alpine

RUN apk add --update build-base git

LABEL "repository"="https://github.com/harley/standardrb-action"
LABEL "maintainer"="Harley Trung <build@coderpush.com>"
LABEL "version"="0.0.3"

COPY lib /action/lib
COPY README.md LICENSE /

RUN gem install bundler

ENTRYPOINT ["/action/lib/entrypoint.sh"]
