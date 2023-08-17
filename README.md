# Simple Rack App

Simple ruby application to handle http requests.

## Requirements:
- ruby 2.6.3
- rack
- rackup (bundled some web servers like Webrick or puma)
- RSpec for running tests
 
## Instalation:
Just run `bundle install` as there is Gemfile included.

## Usage:

```
$ rackup                                                          # default configuration on port 9292
$ rackup -p 9293                                                  # listen on different port
$ rackup -s thin                                                  # use different web server
$ BASIC_AUTH_USERNAME=admin BASIC_AUTH_PASSWORD=secret rackup     # set env variables used for authentication
```

## Endpoints:

- GET /
- GET /home
- POST /home (ie. curl http://127.0.0.1:9292/home -d "")
- GET /secret (ie. curl http://127.0.0.1:9292/secret -u "admin:secret")
  password protected by basic rack auth
- POST /secret (ie. curl http://127.0.0.1:9292/secret -u "admin:secret" -d "name=John")
  password protected and accepts 'name' param

## Tests:

`rspec`
