# frozen_string_literal: true

RSpec.describe Book do
  describe "#taxes" do
    context "when product is not imported" do
      let(:product) { Book.new(1, "book", 12.49, false) }

      it "returns the taxes" do
        expect(product.taxes).to eq([])
      end

      it "returns the price before taxes" do
        expect(product.price_before_taxes).to eq(12.49)
      end

      it "returns the price after taxes" do
        expect(product.total_price).to eq(12.49)
      end
    end

    context "when product is imported" do
      let(:product) { Book.new(1, "book", 12.49, true) }

      it "returns the taxes" do
        expect(product.taxes).to eq([ImportedTax])
      end

      it "returns the price before taxes" do
        expect(product.price_before_taxes).to eq(12.49)
      end

      it "returns the price after taxes" do
        expect(product.total_price).to eq(13.14)
      end
    end
  end
end
