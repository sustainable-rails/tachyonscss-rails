module TachyonscssRails
  class Engine < ::Rails::Engine
    initializer "tachyonscss.assets" do
      Rails.application.config.assets.precompile += %w( tachyons.css )
    end
    initializer "tachyonscss.disable_generator_stylesheets" do
      Rails.application.config.generators.stylesheets = false
    end
  end
end
