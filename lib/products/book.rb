# frozen_string_literal: true

require_relative "product"

class Book < Product
  KEYWORDS = %w[book].freeze
  def taxes
    taxes = []
    taxes << ImportedTax if imported
    taxes
  end
end
