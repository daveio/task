# typed: false
# frozen_string_literal: true

module Task
  # Commands module contains all the command classes for the Task CLI
  module Commands
    extend T::Sig
    # Version command
    class Version
      sig { params(args: T::Array[String], options: T::Hash[Symbol, T.untyped]).void }
      def initialize(args, options)
        @args = args
        @options = options
      end

      sig { void }
      def run
        puts "Task #{Task::VERSION}"
      end
    end
  end
end
