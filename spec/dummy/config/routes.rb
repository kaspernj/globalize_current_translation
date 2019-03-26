Rails.application.routes.draw do
  mount GlobalizeCurrentTranslation::Engine => "/globalize_current_translation"
end
