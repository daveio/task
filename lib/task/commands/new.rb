# typed: true
# frozen_string_literal: true

module Task
  # Commands module contains all the command classes for the Task CLI
  module Commands
    # New command
    class New
      extend T::Sig
      sig { params(args: T::Array[String], options: T::Hash[Symbol, T.untyped]).void }
      def initialize(args, options)
        @args = args
        @options = options
      end

      sig { void }
      def run
        name = @args.first || 'untitled'

        puts "Creating new item: #{name}"
        # Add creation logic here
      end
    end
  end
end
