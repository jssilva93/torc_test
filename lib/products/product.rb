# frozen_string_literal: true

require_relative "../taxes/basic_tax"
require_relative "../taxes/imported_tax"
class Product
  KEYWORDS = %w[].freeze
  attr_accessor :name, :price, :imported, :quantity

  def initialize(quantity, name, price, imported)
    @quantity = quantity
    @name = name
    @price = price
    @imported = imported
  end

  def calculate_tax
    taxes.sum do |tax|
      tax.calculate(self)
    end
  end

  def taxes
    raise NotImplementedError
  end

  def total_price
    (quantity * (price + calculate_tax)).round(2)
  end

  def price_before_taxes
    price * quantity
  end

  def self.applies?(product_line)
    self::KEYWORDS.any? { |keyword| product_line.include?(keyword) }
  end
end
