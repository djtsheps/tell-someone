# Tell Someone

## Purpose


## Technical Setup

System dependencies (use Brew on OSX)

 - Postgresql 9.4+
 - Ruby 2.4.1

Clone the repository & enter the required environment variables

```sh
$ git clone git@github.com:djtsheps/tell-someone.git
$ cd tell-someone
```

Run bundle to install everything

```sh
$ bundle install
```

Start the server

```sh
$ rails s
```


## Ruby Style For Project

 - [Ruby community style](https://github.com/bbatsov/ruby-style-guide)

## Testing

### Web tests

Project uses the following for testing
 - Factory Girl ♥ Rails
 - Travis CI
 - Minitest for xUnit style tests
 - Code Climate for quality metrics

Crash course on Rails 5 test runner:

```
# Run all tests
$ bin/rails t test/

# Run system tests
$ bin/rails test:system

# Running a single test
$ bin/rails t test/models/user_test.rb:27

# Running multiple tests/directories
$ bin/rails t test/models/user_test.rb:27 test/models/post_test.rb:42
$ bin/rails t test/controllers test/integration

# Fail fast
$ bin/rails t -f

# Defer test output until the end of the full test run
$ bin/rails t -d

# Incude entire backtrace in failure/error
$ bin/rails t -b
```

Minitest influenced Rails test runner options:

```
# Switch -s to provide your own seed
$ bin/rails t --s 42000

# Switch -n to run matching tests
$ bin/rails t -n "/create/"

# Verbose output
$ bin/rails t -v
```

## Deployment

