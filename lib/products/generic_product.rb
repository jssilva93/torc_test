# frozen_string_literal: true

class GenericProduct < Product
  def taxes
    taxes = [BasicTax]
    taxes << ImportedTax if imported
    taxes
  end
end
