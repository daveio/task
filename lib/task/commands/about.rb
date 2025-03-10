# frozen_string_literal: true

module TaskCLI
  module Commands
    # About command
    class About
      def initialize(args, options)
        @args = args
        @options = options
      end

      def run
        puts 'Task CLI - A Ruby command-line application'
        puts "Version: #{TaskCLI::VERSION}"
        puts 'Created with Commander gem'
      end
    end
  end
end
