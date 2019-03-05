# frozen_string_literal: true

require_relative '../az'

module Kernel
  private

  def az(input, font = :ascii)
    Az.az(input, font)
  end
end
