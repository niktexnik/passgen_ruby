# frozen_string_literal: true

require_relative './password_generator.rb'
require_relative './parser.rb'

loop do
  puts 'Input lenght of your password:'
  input = $stdin.gets.chomp
  begin
    parsed_input = Parser.parse_input(input)
  rescue Parser::ParseError => e
    $stdout.puts e.message
    redo
  end
  password = PasswordGenerator.process(parsed_input)
  $stdout.puts "Your password: #{password}"
  exit
end
