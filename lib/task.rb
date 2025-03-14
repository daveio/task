# typed: false
# frozen_string_literal: true

require 'commander'
require_relative 'task/version'
require_relative 'task/commands/setup'
require_relative 'task/commands/new'
require_relative 'task/commands/version'

# Task is a module that provides a command-line interface for managing tasks
module Task
  extend T::Sig
  # Task CLI
  class CLI
    include Commander::Methods

    sig { void }
    def self.start
      new.run
    end

    # This method sets up and runs the command-line interface (CLI) for the application.
    # It defines the program's name, version, and description, as well as the available commands.
    sig { void }
    def run
      program :name, 'task'
      program :version, Task::VERSION
      program :description, 'A Ruby CLI application'

      define_about_command
      define_setup_command
      define_new_command
      define_version_command

      # Executes the command-line interface.
      run!
    end

    private

    # Defines the about command
    sig { void }
    def define_about_command
      command :about do |c|
        c.syntax = 'task about'
        c.description = 'Shows information about this CLI'
        c.action do |args, options|
          Commands::About.new(args, options).run
        end
      end
    end

    # Defines the setup command
    sig { void }
    def define_setup_command
      command :setup do |c|
        c.syntax = 'task setup'
        c.description = 'Setup the CLI environment'
        c.action do |args, options|
          Commands::Setup.new(args, options).run
        end
      end
    end

    # Defines the new command
    sig { void }
    def define_new_command
      command :new do |c|
        c.syntax = 'task new [name]'
        c.description = 'Create a new item'
        c.option '--type STRING', String, 'Type of item to create'
        c.action do |args, options|
          Commands::New.new(args, options).run
        end
      end
    end

    # Defines the version command
    sig { void }
    def define_version_command
      command :version do |c|
        c.syntax = 'task version'
        c.description = 'Display the version'
        c.action do |args, options|
          Commands::Version.new(args, options).run
        end
      end
    end
  end
end
