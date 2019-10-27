class Gender < ApplicationRecord
  translates :name
  include GlobalizeCurrentTranslation::Scope
  globalize_accessors
end
