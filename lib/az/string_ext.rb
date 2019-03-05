# frozen_string_literal: true

require_relative "../az"

class String
  # Optional core extension for your convenience
  def az(font)
    Az.az(self, font = :ascii)
  end
end
