require "catpop"
require "rails"

module Catpop
  class Railtie < Rails::Railtie
    initializer "catpop.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include Catpop::PopupHelper
      end
    end

    initializer "catpop.assets" do |app|
      app.config.assets.paths << File.expand_path('../assets/javascripts', __dir__)
      app.config.assets.precompile += %w(catpop.js)
    end
  end
end
