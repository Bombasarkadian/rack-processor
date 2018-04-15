# frozen_string_literal: true

# This class uses a +formatter+ to format +text+ and return it
# as a hash containing both original and processed text.
#
# Example:
#   class Upcaser
#     def self.format(text)
#       text.to_s.upcase
#     end
#   end
#
#   processor = Processor.new(text: 'Foo', formatter: UpcaseFormatter.new)
#   processor.format # => { original: { data: 'Foo' }, message: 'FOO' }
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
