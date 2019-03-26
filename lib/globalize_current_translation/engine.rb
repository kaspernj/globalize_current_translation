module GlobalizeCurrentTranslation
  class Engine < ::Rails::Engine
    isolate_namespace GlobalizeCurrentTranslation
  end
end
