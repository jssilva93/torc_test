# frozen_string_literal: true

class Medicine < Product
  KEYWORDS = %w[pills].freeze

  def taxes
    taxes = []
    taxes << ImportedTax if imported
    taxes
  end
end
