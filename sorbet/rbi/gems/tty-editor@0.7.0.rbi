# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `tty-editor` gem.
# Please instead update this file by running `bin/tapioca gem tty-editor`.


# source://tty-editor//lib/tty/editor/version.rb#3
module TTY; end

# A class responsible for launching an editor
#
# @api public
#
# source://tty-editor//lib/tty/editor/version.rb#4
class TTY::Editor
  # Initialize an Editor
  #
  # @api public
  # @example
  #   TTY::Editor.new(command: "vim")
  # @param env [Hash] environment variables to forward to the editor
  # @param input [IO] the standard input
  # @param raise_on_failure [Boolean] whether or not raise on command failure, false by default
  # @param hide_menu [Boolean] whether or not to hide commands menu, false by default
  # @param enable_color [Boolean] disable or force prompt coloring, defaults to nil
  # @param menu_interrupt [Symbol] how to handle Ctrl+C key interrupt out of :error, :signal, :exit, :noop
  # @param output [IO] the standard output
  # @param command [String] the editor command to use, by default auto detects
  # @return [Editor] a new instance of Editor
  #
  # source://tty-editor//lib/tty/editor.rb#162
  def initialize(command: T.unsafe(nil), raise_on_failure: T.unsafe(nil), hide_menu: T.unsafe(nil), prompt: T.unsafe(nil), env: T.unsafe(nil), enable_color: T.unsafe(nil), input: T.unsafe(nil), output: T.unsafe(nil), menu_interrupt: T.unsafe(nil), &block); end

  # Finds command using a configured command(s) or detected shell commands
  #
  # @api public
  # @example
  #   editor.command("vim")
  # @param commands [Array<String>] the optional command to use, by default auto detecting
  # @raise [TTY::Editor::CommandInvocationError]
  # @return [String]
  #
  # source://tty-editor//lib/tty/editor.rb#211
  def command(*commands); end

  # Read or update environment vars
  #
  # @api public
  # @example
  #   editor.env({"FOO" => "bar"})
  # @param value [Hash{String => String}] the environment variables to use
  # @return [Hash]
  #
  # source://tty-editor//lib/tty/editor.rb#192
  def env(value = T.unsafe(nil)); end

  # Run editor command in a shell
  #
  # @api private
  # @param files [Array<String>] the files to open in an editor
  # @param text [String] the text to edit in an editor
  # @raise [TTY::Editor::CommandInvocationError]
  # @return [Boolean] whether editor command suceeded or not
  #
  # source://tty-editor//lib/tty/editor.rb#237
  def open(*files, text: T.unsafe(nil)); end

  private

  # Render an editor selection prompt to the terminal
  #
  # @api private
  # @return [String] the chosen editor
  #
  # source://tty-editor//lib/tty/editor.rb#320
  def choose_exec_from(execs); end

  # Create tempfile with text
  #
  # @api private
  # @param text [String]
  # @return [Tempfile]
  #
  # source://tty-editor//lib/tty/editor.rb#306
  def create_tempfile(text); end

  # Run editor command with file arguments
  #
  # @api private
  # @param filepaths [Array<String>] the file paths to open in an editor
  # @return [Boolean] whether command succeeded or not
  #
  # source://tty-editor//lib/tty/editor.rb#270
  def run(filepaths); end

  # Check if filename and text arguments are valid
  #
  # @api private
  # @raise [InvalidArgumentError]
  # @return [nil]
  #
  # source://tty-editor//lib/tty/editor.rb#287
  def validate_arguments(files, text); end

  class << self
    # Find available text editors
    #
    # @api public
    # @param commands [Array<String>] the commands to use intstead of defaults
    # @return [Array<String>] the existing editor commands
    #
    # source://tty-editor//lib/tty/editor.rb#86
    def available(*commands); end

    # Check if editor command exists
    #
    # @api private
    # @example
    #   exist?("vim") # => true
    # @example
    #   exist?("/usr/local/bin/vim") # => true
    # @example
    #   exist?("C:\\Program Files\\Vim\\vim.exe") # => true
    # @param command [String] the command to check for the existence
    # @return [Boolean]
    #
    # source://tty-editor//lib/tty/editor.rb#54
    def exist?(command); end

    # Check editor from environment variables
    #
    # @api public
    # @return [Array<String>]
    #
    # source://tty-editor//lib/tty/editor.rb#73
    def from_env; end

    # Open file in system editor
    #
    # @api public
    # @example
    #   TTY::Editor.open("/path/to/filename")
    # @example
    #   TTY::Editor.open("file1", "file2", "file3")
    # @example
    #   TTY::Editor.open(text: "Some text")
    # @param files [Array<String>] the files to open in an editor
    # @param command [String] the editor command to use, by default auto detects
    # @param text [String] the text to edit in an editor
    # @param env [Hash] environment variables to forward to the editor
    # @return [Object]
    #
    # source://tty-editor//lib/tty/editor.rb#134
    def open(*files, text: T.unsafe(nil), **options, &block); end

    private

    # Search for existing executables
    #
    # @api private
    # @return [Array<String>]
    #
    # source://tty-editor//lib/tty/editor.rb#105
    def search_executables(execs); end
  end
end

# Raised when command cannot be invoked
#
# @api public
#
# source://tty-editor//lib/tty/editor.rb#21
class TTY::Editor::CommandInvocationError < ::RuntimeError; end

# List possible command line text editors
#
# @api public
# @return [Array<String>]
#
# source://tty-editor//lib/tty/editor.rb#31
TTY::Editor::EXECUTABLES = T.let(T.unsafe(nil), Array)

# Raised when editor cannot be found
#
# @api public
#
# source://tty-editor//lib/tty/editor.rb#24
class TTY::Editor::EditorNotFoundError < ::RuntimeError; end

# @api public
#
# source://tty-editor//lib/tty/editor.rb#15
class TTY::Editor::Error < ::StandardError; end

# Raised when user provides unnexpected or incorrect argument
#
# @api public
#
# source://tty-editor//lib/tty/editor.rb#18
class TTY::Editor::InvalidArgumentError < ::TTY::Editor::Error; end

# source://tty-editor//lib/tty/editor/version.rb#5
TTY::Editor::VERSION = T.let(T.unsafe(nil), String)
