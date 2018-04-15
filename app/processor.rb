# frozen_string_literal: true

class Processor < Rack::App
  post '/reverse' do
    { request: payload }.to_json
  end
end
