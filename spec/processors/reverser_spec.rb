# frozen_string_literal: true

require 'spec_helper'

describe Reverser do
  describe '#format' do
    subject { described_class.format(text) }

    context 'with valid string as input' do
      let(:text) { 'Lorem ipsum' }

      it 'returns reversed string' do
        expect(subject).to eq('muspi meroL')
      end
    end

    context 'with non-string input' do
      let(:text) { 123 }

      it "uses input's string representation and reverses it" do
        expect(subject).to eq('321')
      end
    end
  end
end
