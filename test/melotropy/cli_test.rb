# frozen_string_literal: true

require "test_helper"

module Melotropy
  class CliTest < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil ::Melotropy::Cli::VERSION
    end
  end
end
