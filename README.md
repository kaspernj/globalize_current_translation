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
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
