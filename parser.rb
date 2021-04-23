# frozen_string_literal: true

class Parser
  class ParseError < StandardError; end

  def self.parse_input(input)
    raise ParseError, 'You must enter the length of the password!' if input.nil? || input.empty?

    result = input.to_i

    raise ParseError, 'password cannot be less than 6 characters!' if result < 6
    raise ParseError, 'password length cannot exceed 16 characters!' if result > 16

    result
  end
end
