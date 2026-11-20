# GlobalizeCurrentTranslation
Short description and motivation.

## Usage

Install the gem on your models like this:
```ruby
class Category < ApplicationRecord
  translates :name
  include GlobalizeCurrentTranslation::Scope
end
```

Now you can use the new relationship to order a collection by its current locale but fall back to another locale:
```ruby
Category.left_joins(:current_translation).order("category_translations.name")
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'globalize_current_translation', git: 'https://github.com/kaspernj/globalize_current_translation.git'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install globalize_current_translation
```

## Contributing

Clone the repository, run `bundle install`, then run the same three checks the CI
lane runs:

```bash
bundle exec rspec
bundle exec rubocop
bundle exec rails_best_practices
```

`spec/rails_helper.rb` boots the engine through the dummy Rails app in
`spec/dummy`, so the suite needs a working database configuration there.
Factories are loaded from `spec/factories` explicitly, because
`factory_bot_rails` resolves its default definition paths inside the dummy app
and never sees this engine's own factory directory.

The lane runs on the Ruby version recorded in `.ruby-version`.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
