# frozen_string_literal: true

require 'commander'
require_relative 'task/version'
require_relative 'task/commands/setup'
require_relative 'task/commands/new'
require_relative 'task/commands/version'

module Task
  # Task CLI
  class CLI
    include Commander::Methods

    def self.start
      new.run
    end

    def run
      program :name, 'task'
      program :version, Task::VERSION
      program :description, 'A Ruby CLI application'

      command :about do |c|
        c.syntax = 'task about'
        c.description = 'Shows information about this CLI'
        c.action do |args, options|
          Commands::About.new(args, options).run
        end
      end

      command :setup do |c|
        c.syntax = 'task setup'
        c.description = 'Setup the CLI environment'
        c.action do |args, options|
          Commands::Setup.new(args, options).run
        end
      end

      command :new do |c|
        c.syntax = 'task new [name]'
        c.description = 'Create a new item'
        c.option '--type STRING', String, 'Type of item to create'
        c.action do |args, options|
          Commands::New.new(args, options).run
        end
      end

      command :version do |c|
        c.syntax = 'task version'
        c.description = 'Display the version'
        c.action do |args, options|
          Commands::Version.new(args, options).run
        end
      end

      run!
    end
  end
end
