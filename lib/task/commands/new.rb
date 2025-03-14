# typed: false
# frozen_string_literal: true

module Task
  # Commands module contains all the command classes for the Task CLI
  module Commands
    extend T::Sig
    # New command
    class New
      sig { params(args: T::Array[String], options: T::Hash[Symbol, T.untyped]).void }
      def initialize(args, options)
        @args = args
        @options = options
      end

      sig { void }
      def run
        name = @args.first || 'untitled'
        type = @options.type || 'default'

        puts "Creating new #{type} item: #{name}"
        # Add creation logic here
      end
    end
  end
end
