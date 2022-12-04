# frozen_string_literal: true

RSpec.describe GenericProduct do
  describe "#taxes" do
    context "when product is not imported" do
      let(:product) { GenericProduct.new(1, "perfume", 12.49, false) }

      it "returns the taxes" do
        expect(product.taxes).to eq([BasicTax])
      end

      it "returns the price before taxes" do
        expect(product.price_before_taxes).to eq(12.49)
      end

      it "returns the price after taxes" do
        expect(product.total_price).to eq(13.74)
      end
    end

    context "when product is imported" do
      let(:product) { GenericProduct.new(1, "perfume", 12.49, true) }

      it "returns the taxes" do
        expect(product.taxes).to eq([BasicTax, ImportedTax])
      end

      it "returns the price before taxes" do
        expect(product.price_before_taxes).to eq(12.49)
      end

      it "returns the price after taxes" do
        expect(product.total_price).to eq(14.34)
      end
    end
  end
end
