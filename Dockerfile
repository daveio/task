FROM ruby:3.4.4-alpine3.21

WORKDIR /app

COPY . /app

RUN adduser -D -s /bin/false task && chown -R task:task /app

USER task

RUN gem install bundler:2.6.6 && \
    bundle config set --local without 'development' && \
    bundle install

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD ruby -e "exit 0" || exit 1

ENTRYPOINT ["ruby", "bin/task"]
