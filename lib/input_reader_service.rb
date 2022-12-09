# frozen_string_literal: true

class InputReaderService < ApplicationService
  PRODUCT_LINE_REGEX = /^[0-9] (\b(?!at\b)\w+ )*\b(at \b)[0-9]*\.[0-9]*$/
  def call
    product_lines = []
    input = ""
    while input != "exit"
      puts "Enter new product line or 'exit':"
      input = gets.chomp
      product_lines << input if input != "exit" && input.match?(PRODUCT_LINE_REGEX)
    end
    product_lines
  end
end
