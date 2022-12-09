# frozen_string_literal: true

class ReceiptService < ApplicationService
  attr_accessor :products

  def initialize(params)
    @products = params[:products]
  end

  def call
    puts "Output 1:"
    products.each { |product| puts "#{product.quantity} #{product.name}: #{product.total_price}" }
    total_price = products.sum(&:total_price).round(2)
    total_before_taxes = products.sum(&:price_before_taxes).round(2)
    sales_taxes = (total_price - total_before_taxes).round(2)
    puts "Sales Taxes: #{sales_taxes}"
    puts "Total: #{"%.2f" % total_price.to_s}"
  end
end
