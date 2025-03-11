FROM ruby:3.4.2-alpine3.21

WORKDIR /app

COPY . /app

RUN useradd -m -s /bin/bash task &&chown -R task:task /app

USER task

RUN gem install bundler && bundle install

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD ruby -e "exit 0" || exit 1

ENTRYPOINT ["ruby"]
CMD ["bin/trunk"]
