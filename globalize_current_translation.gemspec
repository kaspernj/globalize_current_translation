$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "globalize_current_translation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "globalize_current_translation"
  spec.version     = GlobalizeCurrentTranslation::VERSION
  spec.authors     = ["kaspernj"]
  spec.email       = ["kj@abtion.com"]
  spec.homepage    = "https://github.com/kaspernj/globalize_current_translation"
  spec.summary     = "A gem that helps create a `current_translation` relationship " \
    "which is the translation in the current locale with fallback to other locales."
  spec.description = "A gem that helps create a `current_translation` relationship " \
    "which is the translation in the current locale with fallback to other locales."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 5.2.0"

  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "globalize"
  spec.add_development_dependency "globalize-accessors"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rails_best_practices"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-performance"
  spec.add_development_dependency "rubocop-rails"
  spec.add_development_dependency "rubocop-rspec"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "tzinfo-data"
end
