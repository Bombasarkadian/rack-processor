# frozen_string_literal: true

Bundler.require(:default)
Loader.autoload

class App < Rack::App
  mount TextProcessor
end
