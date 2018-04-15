# frozen_string_literal: true

class Processor
  def initialize(text:, formatter:)
    @text = text.to_s
    @formatter = formatter
  end

  def process
    format_response(@formatter.format(@text))
  end

  private

  def format_response(processed_text)
    {
      original: {
        data: @text
      },
      message: processed_text
    }
  end
end
