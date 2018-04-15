# frozen_string_literal: true

require 'spec_helper'

describe Processor do
  describe '#initialize' do
    let(:valid_params) { { text: 'Lorem ipsum', formatter: BasicObject } }
    subject { described_class.new(params) }

    context 'with valid arguments' do
      let(:params) { valid_params }

      it { is_expected.to be_an_instance_of(described_class) }
    end

    context 'without text' do
      let(:params) { valid_params.slice(:formatter) }

      it 'is invalid' do
        expect { subject }.to raise_error(ArgumentError)
      end
    end

    context 'without formatter' do
      let(:params) { valid_params.slice(:text) }

      it 'is invalid' do
        expect { subject }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#process' do
    let(:original_text) { 'Lorem ipsum' }
    let(:formatted_text) { 'Foo' }
    let(:formatter) { double('formatter', format: formatted_text) }
    subject { described_class.new(text: original_text, formatter: formatter).process }

    it 'uses the formatter' do
      expect(formatter).to receive(:format)
      subject
    end

    it 'returns an object containing formatted text' do
      expect(subject[:original][:data]).to eq(original_text)
    end

    it 'returns the formatted text' do
      expect(subject[:message]).to eq(formatted_text)
    end
  end
end
