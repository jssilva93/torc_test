# frozen_string_literal: true

require_relative "../helpers/number_helper"
class BasicTax
  TAX_VALUE = 0.1

  def self.calculate(product)
    Helpers::NumberHelper.round_to_nearest(product.price * TAX_VALUE, 20)
  end
end
