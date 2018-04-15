# frozen_string_literal: true

Bundler.require
Loader.autoload

class App < Rack::App
  headers 'Content-Type' => 'application/json'

  serializer do |obj|
    JSON.dump(obj)
  end

  mount Processor
end

run App
