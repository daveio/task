# frozen_string_literal: true

module TaskCLI
  module Commands
    # Version command
    class Version
      def initialize(args, options)
        @args = args
        @options = options
      end

      def run
        puts "task version #{TaskCLI::VERSION}"
      end
    end
  end
end
