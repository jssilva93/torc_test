# frozen_string_literal: true

module Helpers
  class NumberHelper
    def self.round_to_nearest(number, nearest)
      ((number * nearest).ceil / nearest.to_f)
    end
  end
end
