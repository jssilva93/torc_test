# frozen_string_literal: true

require_relative "../helpers/number_helper"
class ImportedTax
  TAX_VALUE = 0.05

  def self.calculate(product)
    Helpers::NumberHelper.round_to_nearest(product.price_before_taxes * TAX_VALUE, 20)
  end
end
