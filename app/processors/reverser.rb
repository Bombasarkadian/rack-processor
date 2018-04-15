# frozen_string_literal: true

# This class is a text formatter which returns reversed string
#
# Example:
#   Reverser.format('Foo') # => 'ooF'
class Reverser
  def self.format(text)
    text.to_s.reverse
  end
end
