module GlobalizeCurrentTranslation; end

class GlobalizeCurrentTranslation::Engine < ::Rails::Engine
  isolate_namespace GlobalizeCurrentTranslation
end
