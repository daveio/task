require 'commander'
require_relative 'task_cli/version'
require_relative 'task_cli/commands/about'
require_relative 'task_cli/commands/setup'
require_relative 'task_cli/commands/new'
require_relative 'task_cli/commands/version'
module TaskCLI
  class CLI
    include Commander::Methods
    
    def self.start
      new.run
    end
    
    def run
      program :name, 'task'
      program :version, TaskCLI::VERSION
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

