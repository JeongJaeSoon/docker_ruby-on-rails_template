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

### Developmentd

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
