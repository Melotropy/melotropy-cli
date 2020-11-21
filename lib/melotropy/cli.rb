# frozen_string_literal: true

require "melotropy/cli/version"
require "thor"

module Melotropy
  module Cli
    class Error < StandardError; end

    # Real Thor's subclass
    class CLI < Thor
      desc "version", "Shows melotropy-cli installed version"
      def version
        puts "melotropy-cli v#{Melotropy::Cli::VERSION}"
      end
    end
  end
end
