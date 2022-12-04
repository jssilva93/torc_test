# frozen_string_literal: true

class ProductBuilder
  def self.build_for(product_line)
    price = product_line.split(" at ").last.strip.to_f
    quantity = product_line.split(" ").first.to_i
    name = product_line.split(" at ").first.split(" ").drop(1).join(" ")
    imported = product_line.include?("imported")
    products = []

    products << if Food.applies?(product_line)
                  Food.new(quantity, name, price, imported)
                elsif Book.applies?(product_line)
                  Book.new(quantity, name, price, imported)
                elsif Medicine.applies?(product_line)
                  Medicine.new(quantity, name, price, imported)
                else
                  GenericProduct.new(quantity, name, price, imported)
                end
    products
  end
end

# Path: spec/product_builder_spec.rb
