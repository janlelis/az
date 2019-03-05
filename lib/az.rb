# frozen_string_literal: true

require_relative "az/constants"

module Az
  def self.az(input, font = :ascii)
    input.tr(
      FONTS[:ascii],
      (FONTS[(font || "").to_sym] or raise ArgumentError, "unknown az font: #{font}")
    )
  end
  class << self; alias of az; end

  def self.fonts
    FONTS.keys
  end
end
