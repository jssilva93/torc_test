# frozen_string_literal: true

class InputReaderService < ApplicationService
  def call
    product_lines = []
    input = ""
    while input != "exit"
      puts "Enter new product line or 'exit':"
      input = gets.chomp
      product_lines << input if input != "exit"
    end
    product_lines
  end
end
