# Paint::Rails

This is a gem package for [Paint](https://github.com/alphasights/paint) which is a sass placeholder library for UI components.

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

Here are the [instructions on how to use it](http://as-canvas.divshot.io/)


### Update Paint Version
1. Clone paint-rails
2. git submodule init
3. git submodule update
4. In `vendor/paint` directory, checkout release tag and `git pull` changes.
5. Update `lib/paint-rails/version`.rb with updated version number.
6. In root directory, run 'bundle exec rake paint:update'
7. Commit changes and push, make a new PR.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/paint-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
