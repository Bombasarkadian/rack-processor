# frozen_string_literal: true

class TextProcessor < Rack::App
  headers 'Content-Type' => 'application/json'
  serializer { |obj| JSON.dump(obj) }

  post '/reverse' do
    Processor.new(text: payload, formatter: Reverser).process
  end
end
