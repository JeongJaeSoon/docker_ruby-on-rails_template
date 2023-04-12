# Version

- Ruby : v3.2.1
- Ruby on Rails : v7.0.4
- Bundler : v2.4.10

# Setup

### Install dependencies

```bash
$ rbenv install 3.2.1
$ rbenv global 3.2.1
$ rbenv rehash
$ ruby -v
ruby 3.2.1
$ bundle install
```

### Development

```bash
$ cp .env.example .env
$ bin/docker dev
```

### Docker

```bash
# Container build
$ bin/docker build

# Container run
$ bin/docker run

# Container build & run
$ bin/docker start

# Container stop
$ bin/docker stop
```

# Reference

### Dockerfile

* [nickjj/docker-rails-example](https://github.com/nickjj/docker-rails-example/blob/main/Dockerfile)

### docker-compose for development

* [Containerizing a Ruby on Rails Application for Development with Docker Compose | DigitalOcean](https://www.digitalocean.com/community/tutorials/containerizing-a-ruby-on-rails-application-for-development-with-docker-compose)
* [How To Add Sidekiq and Redis to a Ruby on Rails Application | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-add-sidekiq-and-redis-to-a-ruby-on-rails-application)

### rails hotwire for live reload

* [How to set-up Rails Hotwire  live reload](https://dev.to/thomasvanholder/how-to-set-up-rails-hotwire-live-reload-38i9)
* [Live reloading for Hotwire Rails apps](https://kirillplatonov.com/posts/hotwire-livereload/)