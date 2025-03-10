module TaskCLI
  module Commands
    class New
      def initialize(args, options)
        @args = args
        @options = options
      end

      def run
        name = @args.first || 'untitled'
        type = @options.type || 'default'
        
        puts "Creating new #{type} item: #{name}"
        # Add creation logic here
      end
    end
  end
end

