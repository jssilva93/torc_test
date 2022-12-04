# frozen_string_literal: true

require_relative "torc_test/version"
Dir[File.join(__dir__, "*.rb")].each { |file| require file }
Dir[File.join(__dir__, "products", "*.rb")].each { |file| require file }

module TorcTest
  class Error < StandardError; end

  product_lines = InputReaderService.call
  products = product_lines.map { |product_line| ProductBuilder.build_for(product_line) }.flatten
  ReceiptService.call(products: products)
end
