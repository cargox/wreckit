# Wreckit
This is a rails engine that introduces instrumented way to generate remote controlled errors on your application.

## Installation
Add this line to your application's Gemfile:

```ruby
# Gemfile
gem 'wreckit'
```

And then execute:
```bash
$ bundle
```

On your rails app:

```
# config/routes.rb
 ...
   mount Wreckit::Engine => "/_wreckit"
 ...
```

Configure the environment variable token the will constrain the requests to Wreckit routes and restart your server.

```
  export WRECKIT_API_KEY="my-secret-key"
```

## Usage

Request and error 500 on your application

```
  curl http://myapp.com/_wreckit/error/500 -H "X-Wreckit-Key: my-secret-key"
```

## Contributing
You know... as usual.

## TODO
[ ] Add other abilities.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


