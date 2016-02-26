# Testing Hutch channels across Threads

This is a repo to test some of the assumptions and functionality
that's attempted to be solved by
[gocardless/hutch#194](https://github.com/gocardless/hutch/pull/194).

## Dependencies

### RabbitMQ

You will need to install RabbitMQ and having it running locally using
the default configuration.

### Server

The dependencies for the server are in the `Gemfile`. You can
install them using `bundle install`.

## Running

You can run the application in your terminal (using puma) as follows:
`bundle exec puma -C puma.rb`
