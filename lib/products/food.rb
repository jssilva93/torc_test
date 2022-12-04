# frozen_string_literal: true

class Food < Product
  KEYWORDS = %w[chocolate].freeze
  def taxes
    taxes = []
    taxes << ImportedTax if imported
    taxes
  end
end
