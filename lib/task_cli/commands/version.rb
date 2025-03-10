module TaskCLI
  module Commands
    class Version
      def initialize(args, options)
        @args = args
        @options = options
      end

      def run
        puts "task version #{TaskCLI::VERSION}"
      end
    end
  end
end

