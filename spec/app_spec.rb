# frozen_string_literal: true

require 'spec_helper'

describe App do
  include Rack::App::Test

  describe '/reverse' do
    context 'when sending some text' do
      let(:text) { 'Lorem ipsum' }
      let(:response) { post(url: '/reverse', payload: text) }

      it 'returns status 200' do
        expect(response.status).to eq(200)
      end

      it 'returns a valid JSON' do
        expect { JSON.parse(response.body) }.not_to raise_error
      end

      context 'response' do
        subject { JSON.parse(response.body) }

        it 'contains reversed string as message' do
          expect(subject['message']).to eq('muspi meroL')
        end

        it 'contains original data' do
          expect(subject['original']['data']).to eq(text)
        end
      end
    end
  end
end
