# Paint::Rails

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'paint-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paint-rails

## Usage

TODO: Write usage instructions here

### Update Paint Version
1. Clone paint-rails
2. git submodule init
3. git submodule update
4. Update vendor/paint/bower.json to reflect updated version.
5. In paint directory, checkout master branch and 'git pull' changes.
6. In root directory, run 'bundle exec rake paint:update'
7. Update lib/paint-rails/version.rb with updated version number.
8. Commit changes and push, make PR.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/paint-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
