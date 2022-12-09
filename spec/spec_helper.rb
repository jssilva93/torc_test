# frozen_string_literal: true

require_relative  "../lib/products/book"
require_relative  "../lib/products/food"
require_relative  "../lib/products/medicine"
require_relative  "../lib/products/generic_product"
require_relative  "../lib/taxes/basic_tax"
require_relative  "../lib/taxes/imported_tax"
require_relative  "../lib/application_service"
require_relative  "../lib/input_reader_service"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
