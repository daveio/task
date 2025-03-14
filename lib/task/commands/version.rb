# typed: false
# frozen_string_literal: true

module Task
  module Commands
    # Version command
    class Version
      def initialize(args, options)
        @args = args
        @options = options
      end

      def run
        puts "Task #{Task::VERSION}"
      end
    end
  end
end
