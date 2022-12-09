# frozen_string_literal: true

RSpec.describe InputReaderService do
  describe "#call" do
    context "when input is valid" do
      it "returns the product lines" do
        allow_any_instance_of(InputReaderService).to receive(:gets).and_return("1 book at 12.49", "exit")
        expect(InputReaderService.new.call).to eq(["1 book at 12.49"])
      end
    end

    context "when input is invalid" do
      it "returns the product lines" do
        allow_any_instance_of(InputReaderService).to receive(:gets).and_return("book at 12.49", "exit")
        expect(InputReaderService.new.call).to eq([])
      end
    end
  end
end
