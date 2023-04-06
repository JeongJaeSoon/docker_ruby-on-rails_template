FROM ruby:3.2.1-slim-bullseye AS assets

WORKDIR /app

ARG UID=1000
ARG GID=1000

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential curl libpq-dev \
  && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man \
  && apt-get clean \
  && groupadd -g "${GID}" ruby \
  && useradd --create-home --no-log-init -u "${UID}" -g "${GID}" ruby \
  && chown ruby:ruby -R /app

USER ruby

ENV BUNDLER_VERSION=2.4.10
RUN gem install bundler -v 2.4.10

COPY --chown=ruby:ruby Gemfile* ./
RUN bundle check || bundle install

ARG RAILS_ENV="production"
ENV RAILS_ENV="${RAILS_ENV}" \
    USER="ruby"

COPY --chown=ruby:ruby . .

RUN if [ "${RAILS_ENV}" != "development" ]; then \
  SECRET_KEY_BASE=dummyvalue rails assets:precompile; fi
RUN rm -f tmp/pids/server.pid

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
