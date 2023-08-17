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
$ BASIC_AUTH_USERNAME=admin BASIC_AUTH_PASSWORD=secret rackup     # use different web server
```

## Endpoints:

- /
- /home
- /secret (password protected using Rack::Auth::Basic)

## Tests:

`rspec`
