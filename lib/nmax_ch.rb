# frozen_string_literal: true

require_relative "nmax_ch/version"
require 'nmax_ch/work_text'

class WorkGem
  include WorkText
  def initialize(n)
    @nmax = n
  end

  def print_array
    puts get_numbers(@nmax)
  end
end