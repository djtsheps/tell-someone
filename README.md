# Tell Someone

## Purpose


## Technical Setup

System dependencies (use Brew on OSX)

 - Postgresql 9.4+
 - Redis
 - Ruby 2.4.1 (Or as specified in Gemfile)

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


## Environment variables / Rails 5.1 Encrypted Secrets

The Environment Variables for this project have been moved into an encrypted secrets file `config/secrets.yml.enc`.
This removes the need to maintain a `.env.example` file or to try and ensure everyone has the same values as their Env Vars.
The `config/secrets.yml.enc` file is read/decrypted with the use of what is called a rails master key.
This can be stored in the ENV['RAILS_MASTER_KEY'] var, or in the `config/secrets.yml.key` file which should NEVER be commited into the repo. When adding the key to the `config/secrets.yml.key` file, the key should be the only thing in the file.

The Master Key is stored in the 1password team vault.

### View/Edit Secrets

To open the secrets file you can run the following command.
`EDITOR="${editor_name}" ./bin/rails secrets:edit`
