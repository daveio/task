# typed: false
# frozen_string_literal: true

module Task
  # Commands module contains all the command classes for the Task CLI
  module Commands
    extend T::Sig
    # Setup command
    class Setup
      sig { params(args: T::Array[String], options: T::Hash[Symbol, T.untyped]).void }
      def initialize(args, options)
        @args = args
        @options = options
      end

      sig { void }
      def run
        puts 'Setting up Task CLI environment...'
        # Add setup logic here
        puts 'Setup complete!'
      end
    end
  end
end
