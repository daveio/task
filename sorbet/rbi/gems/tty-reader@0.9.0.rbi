# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `tty-reader` gem.
# Please instead update this file by running `bin/tapioca gem tty-reader`.


# source://tty-reader//lib/tty/reader/history.rb#5
module TTY; end

# A class responsible for reading character input from STDIN
#
# Used internally to provide key and line reading functionality
#
# @api public
#
# source://tty-reader//lib/tty/reader/history.rb#6
class TTY::Reader
  include ::Wisper::Publisher
  extend ::Wisper::Publisher::ClassMethods

  # Initialize a Reader
  #
  # @api public
  # @param input [IO] the input stream
  # @param output [IO] the output stream
  # @param interrupt [Symbol] the way to handle the Ctrl+C key out of :signal, :exit, :noop
  # @param env [Hash] the environment variables
  # @param history_cycle [Boolean] allow cycling through history, false by default
  # @param history_duplicates [Boolean] allow duplicate entires, false by default
  # @param history_exclude [Proc] exclude lines from history, by default all lines are stored
  # @param track_history [Boolean] disable line history tracking, true by default
  # @return [Reader] a new instance of Reader
  #
  # source://tty-reader//lib/tty/reader.rb#79
  def initialize(input: T.unsafe(nil), output: T.unsafe(nil), interrupt: T.unsafe(nil), env: T.unsafe(nil), track_history: T.unsafe(nil), history_cycle: T.unsafe(nil), history_exclude: T.unsafe(nil), history_duplicates: T.unsafe(nil)); end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#433
  def add_to_history(line); end

  # Clear display for the current line input
  #
  # Handles clearing input that is longer than the current
  # terminal width which allows copy & pasting long strings.
  #
  # @api private
  # @param line [Line] the line to display
  # @param screen_width [Number] the terminal screen width
  #
  # source://tty-reader//lib/tty/reader.rb#343
  def clear_display(line, screen_width); end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#55
  def console; end

  # Count the number of screen lines given line takes up in terminal
  #
  # @api public
  # @param line_or_size [Integer] the current line or its length
  # @param screen_width [Integer] the width of terminal screen
  # @return [Integer]
  #
  # source://tty-reader//lib/tty/reader.rb#362
  def count_screen_lines(line_or_size, screen_width = T.unsafe(nil)); end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#57
  def cursor; end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#50
  def env; end

  # Get input code points
  #
  # @api private
  # @option [Boolean]
  # @option [Boolean]
  # @param echo [Boolean] whether to echo chars back or not, defaults to false
  # @param codes [Array[Integer]] the currently read char code points
  # @param [Boolean] [Hash] a customizable set of options
  # @return [Array[Integer]]
  #
  # source://tty-reader//lib/tty/reader.rb#209
  def get_codes(echo: T.unsafe(nil), raw: T.unsafe(nil), nonblock: T.unsafe(nil), codes: T.unsafe(nil)); end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#441
  def history_next; end

  # @api public
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader.rb#437
  def history_next?; end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#450
  def history_previous; end

  # @api public
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader.rb#446
  def history_previous?; end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#46
  def input; end

  # Inspect class name and public attributes
  #
  # @api public
  # @return [String]
  #
  # source://tty-reader//lib/tty/reader.rb#460
  def inspect; end

  # Capture Ctrl+d and Ctrl+z key events
  #
  # @api private
  #
  # source://tty-reader//lib/tty/reader.rb#428
  def keyctrl_d(*_arg0); end

  # Capture Ctrl+d and Ctrl+z key events
  #
  # @api private
  #
  # source://tty-reader//lib/tty/reader.rb#428
  def keyctrl_z(*_arg0); end

  # @api public
  #
  # source://wisper/2.0.1/lib/wisper/publisher.rb#13
  def old_subcribe(listener, options = T.unsafe(nil)); end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#48
  def output; end

  # Read a keypress including invisible multibyte codes and return
  # a character as a string.
  # Nothing is echoed to the console. This call will block for a
  # single keypress, but will not wait for Enter to be pressed.
  #
  # @api public
  # @option [Boolean]
  # @option [Boolean]
  # @param echo [Boolean] whether to echo chars back or not, defaults to false
  # @param [Boolean] [Hash] a customizable set of options
  # @return [String]
  #
  # source://tty-reader//lib/tty/reader.rb#184
  def read_char(echo: T.unsafe(nil), raw: T.unsafe(nil), nonblock: T.unsafe(nil)); end

  # Read a keypress including invisible multibyte codes and return
  # a character as a string.
  # Nothing is echoed to the console. This call will block for a
  # single keypress, but will not wait for Enter to be pressed.
  #
  # @api public
  # @option [Boolean]
  # @option [Boolean]
  # @param echo [Boolean] whether to echo chars back or not, defaults to false
  # @param [Boolean] [Hash] a customizable set of options
  # @return [String]
  #
  # source://tty-reader//lib/tty/reader.rb#184
  def read_keypress(echo: T.unsafe(nil), raw: T.unsafe(nil), nonblock: T.unsafe(nil)); end

  # Get a single line from STDIN. Each key pressed is echoed
  # back to the shell. The input terminates when enter or
  # return key is pressed.
  #
  # @api public
  # @option [Boolean]
  # @option [Boolean]
  # @param [Boolean] [Hash] a customizable set of options
  # @param value [String] the value to pre-populate line with
  # @param prompt [String] the prompt to display before input
  # @param echo [Boolean] whether to echo chars back or not, defaults to false
  # @return [String]
  #
  # source://tty-reader//lib/tty/reader.rb#248
  def read_line(prompt = T.unsafe(nil), value: T.unsafe(nil), echo: T.unsafe(nil), raw: T.unsafe(nil), nonblock: T.unsafe(nil)); end

  # Read multiple lines and return them in an array.
  # Skip empty lines in the returned lines array.
  # The input gathering is terminated by Ctrl+d or Ctrl+z.
  #
  # @api public
  # @option [Boolean]
  # @option [Boolean]
  # @param [Boolean] [Hash] a customizable set of options
  # @param value [String] the value to pre-populate line with
  # @param prompt [String] the prompt displayed before the input
  # @param echo [Boolean] whether to echo chars back or not, defaults to false
  # @return [Array[String]]
  # @yield [String] line
  #
  # source://tty-reader//lib/tty/reader.rb#393
  def read_lines(prompt = T.unsafe(nil), value: T.unsafe(nil), echo: T.unsafe(nil), raw: T.unsafe(nil), nonblock: T.unsafe(nil)); end

  # Read multiple lines and return them in an array.
  # Skip empty lines in the returned lines array.
  # The input gathering is terminated by Ctrl+d or Ctrl+z.
  #
  # @api public
  # @option [Boolean]
  # @option [Boolean]
  # @param [Boolean] [Hash] a customizable set of options
  # @param value [String] the value to pre-populate line with
  # @param prompt [String] the prompt displayed before the input
  # @param echo [Boolean] whether to echo chars back or not, defaults to false
  # @return [Array[String]]
  # @yield [String] line
  #
  # source://tty-reader//lib/tty/reader.rb#393
  def read_multiline(prompt = T.unsafe(nil), value: T.unsafe(nil), echo: T.unsafe(nil), raw: T.unsafe(nil), nonblock: T.unsafe(nil)); end

  # Select appropriate console
  #
  # @api private
  #
  # source://tty-reader//lib/tty/reader.rb#144
  def select_console(input); end

  # Subscribe to receive key events
  #
  # @api public
  # @example
  #   reader.subscribe(MyListener.new)
  # @return [self|yield]
  #
  # source://tty-reader//lib/tty/reader.rb#114
  def subscribe(listener, options = T.unsafe(nil)); end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#52
  def track_history; end

  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#52
  def track_history?; end

  # Expose event broadcasting
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader.rb#421
  def trigger(event, *args); end

  # Get input in unbuffered mode.
  #
  # @api public
  # @example
  #   unbufferred do
  #   ...
  #   end
  #
  # source://tty-reader//lib/tty/reader.rb#160
  def unbufferred(&block); end

  # Unsubscribe from receiving key events
  #
  # @api public
  # @example
  #   reader.unsubscribe(my_listener)
  # @return [void]
  #
  # source://tty-reader//lib/tty/reader.rb#132
  def unsubscribe(listener); end

  private

  # Handle input interrupt based on provided value
  #
  # @api private
  #
  # source://tty-reader//lib/tty/reader.rb#483
  def handle_interrupt; end

  # Publish event
  #
  # @api private
  # @param char [String] the key pressed
  # @return [nil]
  #
  # source://tty-reader//lib/tty/reader.rb#474
  def trigger_key_event(char, line: T.unsafe(nil)); end

  class << self
    # Check if Windowz mode
    #
    # @api public
    # @return [Boolean]
    #
    # source://tty-reader//lib/tty/reader.rb#42
    def windows?; end
  end
end

# @api public
#
# source://tty-reader//lib/tty/reader.rb#26
TTY::Reader::BACKSPACE = T.let(T.unsafe(nil), Integer)

# Key codes
#
# @api public
#
# source://tty-reader//lib/tty/reader.rb#24
TTY::Reader::CARRIAGE_RETURN = T.let(T.unsafe(nil), Integer)

# source://tty-reader//lib/tty/reader/console.rb#10
class TTY::Reader::Console
  # @return [Console] a new instance of Console
  #
  # source://tty-reader//lib/tty/reader/console.rb#30
  def initialize(input); end

  # Escape codes
  #
  # @api public
  # @return [Array[Integer]]
  #
  # source://tty-reader//lib/tty/reader/console.rb#28
  def escape_codes; end

  # Get a character from console with echo
  #
  # @api private
  # @param echo [Boolean] whether to echo input back or not, defaults to true
  # @param raw [Boolean] whether to use raw mode or not, defaults to false
  # @param nonblock [Boolean] whether to wait for input or not, defaults to false
  # @return [String]
  #
  # source://tty-reader//lib/tty/reader/console.rb#49
  def get_char(echo: T.unsafe(nil), raw: T.unsafe(nil), nonblock: T.unsafe(nil)); end

  # Key codes
  #
  # @api public
  # @return [Hash[Symbol]]
  #
  # source://tty-reader//lib/tty/reader/console.rb#21
  def keys; end

  protected

  # Returns the value of attribute input.
  #
  # source://tty-reader//lib/tty/reader/console.rb#65
  def input; end

  # Returns the value of attribute mode.
  #
  # source://tty-reader//lib/tty/reader/console.rb#63
  def mode; end
end

# source://tty-reader//lib/tty/reader/console.rb#12
TTY::Reader::Console::CSI = T.let(T.unsafe(nil), String)

# source://tty-reader//lib/tty/reader/console.rb#11
TTY::Reader::Console::ESC = T.let(T.unsafe(nil), String)

# source://tty-reader//lib/tty/reader/console.rb#14
TTY::Reader::Console::TIMEOUT = T.let(T.unsafe(nil), Float)

# @api public
#
# source://tty-reader//lib/tty/reader.rb#27
TTY::Reader::DELETE = T.let(T.unsafe(nil), Integer)

# Keys that terminate input
#
# @api public
#
# source://tty-reader//lib/tty/reader.rb#30
TTY::Reader::EXIT_KEYS = T.let(T.unsafe(nil), Array)

# A class responsible for storing a history of all lines entered by
# user when interacting with shell prompt.
#
# @api private
#
# source://tty-reader//lib/tty/reader/history.rb#11
class TTY::Reader::History
  include ::Enumerable
  extend ::Forwardable

  # Create a History buffer
  #
  # @api public
  # @param max_size [Integer] the maximum size for history buffer
  # @param cycle [Boolean] whether or not the history should cycle, false by default
  # @param duplicates [Boolean] whether or not to store duplicates, true by default
  # @param exclude [Boolean] a Proc to exclude items from storing in history
  # @return [History] a new instance of History
  # @yield [_self]
  # @yieldparam _self [TTY::Reader::History] the object that the method was called on
  #
  # source://tty-reader//lib/tty/reader/history.rb#66
  def initialize(max_size = T.unsafe(nil), duplicates: T.unsafe(nil), cycle: T.unsafe(nil), exclude: T.unsafe(nil)); end

  # Add the last typed line to history buffer
  #
  # @api public
  # @param line [String]
  #
  # source://tty-reader//lib/tty/reader/history.rb#94
  def <<(line); end

  # Return line at the specified index
  #
  # @api public
  # @raise [IndexError] index out of range
  #
  # source://tty-reader//lib/tty/reader/history.rb#143
  def [](index); end

  # Empty all history lines
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/history.rb#166
  def clear; end

  # Decides whether or not to allow cycling through stored lines.
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/history.rb#38
  def cycle; end

  # Decides whether or not to allow cycling through stored lines.
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/history.rb#38
  def cycle=(_arg0); end

  # Decides wether or not duplicate lines are stored.
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/history.rb#45
  def duplicates; end

  # Decides wether or not duplicate lines are stored.
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/history.rb#45
  def duplicates=(_arg0); end

  # Iterates over history lines
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/history.rb#81
  def each(&block); end

  # Dictates which lines are stored.
  #
  # @api private
  # @return [Proc]
  #
  # source://tty-reader//lib/tty/reader/history.rb#52
  def exclude; end

  # Dictates which lines are stored.
  #
  # @api private
  # @return [Proc]
  #
  # source://tty-reader//lib/tty/reader/history.rb#52
  def exclude=(_arg0); end

  # Get current line
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/history.rb#157
  def get; end

  # The current index
  #
  # @api private
  # @return [Integer]
  #
  # source://tty-reader//lib/tty/reader/history.rb#31
  def index; end

  # source://forwardable/1.3.3/forwardable.rb#231
  def inspect(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def length(*args, **_arg1, &block); end

  # Set and retrieve the maximum size of the buffer
  #
  # @api private
  #
  # source://tty-reader//lib/tty/reader/history.rb#24
  def max_size; end

  # Set and retrieve the maximum size of the buffer
  #
  # @api private
  #
  # source://tty-reader//lib/tty/reader/history.rb#24
  def max_size=(_arg0); end

  # Move the pointer to the next line in the history
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/history.rb#109
  def next; end

  # @api private
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/history.rb#119
  def next?; end

  # Move the pointer to the previous line in the history
  #
  # @api private
  #
  # source://tty-reader//lib/tty/reader/history.rb#124
  def previous; end

  # @api private
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/history.rb#134
  def previous?; end

  # Add the last typed line to history buffer
  #
  # @api public
  # @param line [String]
  #
  # source://tty-reader//lib/tty/reader/history.rb#94
  def push(line); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def size(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def to_s(*args, **_arg1, &block); end
end

# Default exclude
#
# @api private
#
# source://tty-reader//lib/tty/reader/history.rb#19
TTY::Reader::History::DEFAULT_EXCLUDE = T.let(T.unsafe(nil), Proc)

# Default maximum size
#
# @api private
#
# source://tty-reader//lib/tty/reader/history.rb#16
TTY::Reader::History::DEFAULT_SIZE = T.let(T.unsafe(nil), Integer)

# Raised when the user hits the interrupt key(Control-C)
#
# @api public
#
# source://tty-reader//lib/tty/reader.rb#35
class TTY::Reader::InputInterrupt < ::Interrupt; end

# Responsible for meta-data information about key pressed
#
# @api private
#
# source://tty-reader//lib/tty/reader/key_event.rb#10
class TTY::Reader::Key < ::Struct
  # @api private
  # @return [Key] a new instance of Key
  #
  # source://tty-reader//lib/tty/reader/key_event.rb#11
  def initialize(*_arg0); end
end

# Represents key event emitted during keyboard press
#
# @api public
#
# source://tty-reader//lib/tty/reader/key_event.rb#19
class TTY::Reader::KeyEvent < ::Struct
  # Check if key event can be triggered
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/key_event.rb#53
  def trigger?; end

  class << self
    # Create key event from read input codes
    #
    # @api public
    # @param keys [Hash[Symbol]] the keys and codes mapping
    # @param codes [Array[Integer]]
    # @return [KeyEvent]
    #
    # source://tty-reader//lib/tty/reader/key_event.rb#29
    def from(keys, char, line = T.unsafe(nil)); end
  end
end

# Mapping of escape codes to keys
#
# source://tty-reader//lib/tty/reader/keys.rb#6
module TTY::Reader::Keys
  private

  # source://tty-reader//lib/tty/reader/keys.rb#7
  def ctrl_keys; end

  # source://tty-reader//lib/tty/reader/keys.rb#46
  def keys; end

  # source://tty-reader//lib/tty/reader/keys.rb#128
  def win_keys; end

  class << self
    # source://tty-reader//lib/tty/reader/keys.rb#7
    def ctrl_keys; end

    # source://tty-reader//lib/tty/reader/keys.rb#46
    def keys; end

    # source://tty-reader//lib/tty/reader/keys.rb#128
    def win_keys; end
  end
end

# source://tty-reader//lib/tty/reader/line.rb#7
class TTY::Reader::Line
  # Create a Line instance
  #
  # @api private
  # @return [Line] a new instance of Line
  # @yield [_self]
  # @yieldparam _self [TTY::Reader::Line] the object that the method was called on
  #
  # source://tty-reader//lib/tty/reader/line.rb#40
  def initialize(text = T.unsafe(nil), prompt: T.unsafe(nil)); end

  # Add char and move cursor
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#204
  def <<(char); end

  # Read character
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#179
  def [](i); end

  # Insert characters inside a line. When the lines exceeds
  # maximum length, an extra space is added to accomodate index.
  #
  # @api public
  # @example
  #   text = "aaa"
  #   line[5]= "b"
  #   => "aaa  b"
  # @param i [Integer] the index to insert at
  # @param chars [String] the characters to insert
  #
  # source://tty-reader//lib/tty/reader/line.rb#146
  def []=(i, chars); end

  # The current cursor position witin the text
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#27
  def cursor; end

  # Remove char from the line at current position
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#212
  def delete(n = T.unsafe(nil)); end

  # Enable edit mode
  #
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/line.rb#63
  def edit_mode; end

  # Check if line is in edit mode
  #
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/line.rb#54
  def editing?; end

  # Check if cursor reached end of the line
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/line.rb#99
  def end?; end

  # Insert char(s) at cursor position
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#197
  def insert(chars); end

  # Full line with prompt as string
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#230
  def inspect; end

  # Move line position to the left by n chars
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#106
  def left(n = T.unsafe(nil)); end

  # Full line size with prompt
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#255
  def length; end

  # The line mode
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#31
  def mode; end

  # Move cursor to end position
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#127
  def move_to_end; end

  # Move cursor to beginning position
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#120
  def move_to_start; end

  # The prompt displayed before input
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#35
  def prompt; end

  # Prompt size
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#238
  def prompt_size; end

  # Remove char from the line in front of the cursor
  #
  # @api public
  # @param n [Integer] the number of chars to remove
  #
  # source://tty-reader//lib/tty/reader/line.rb#222
  def remove(n = T.unsafe(nil)); end

  # Replace current line with new text
  #
  # @api public
  # @param text [String]
  #
  # source://tty-reader//lib/tty/reader/line.rb#188
  def replace(text); end

  # Enable replace mode
  #
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/line.rb#81
  def replace_mode; end

  # Check if line is in replace mode
  #
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/line.rb#72
  def replacing?; end

  # Move line position to the right by n chars
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#113
  def right(n = T.unsafe(nil)); end

  # Full line size with prompt
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#255
  def size; end

  # Check if cursor reached beginning of the line
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/line.rb#90
  def start?; end

  # The editable text
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#23
  def text; end

  # Text size
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#248
  def text_size; end

  # Full line with prompt as string
  #
  # @api public
  #
  # source://tty-reader//lib/tty/reader/line.rb#230
  def to_s; end

  class << self
    # Strip ANSI characters from the text
    #
    # @api public
    # @param text [String]
    # @return [String]
    #
    # source://tty-reader//lib/tty/reader/line.rb#17
    def sanitize(text); end
  end
end

# source://tty-reader//lib/tty/reader/line.rb#8
TTY::Reader::Line::ANSI_MATCHER = T.let(T.unsafe(nil), Regexp)

# source://tty-reader//lib/tty/reader/mode.rb#7
class TTY::Reader::Mode
  # Initialize a Terminal
  #
  # @api public
  # @return [Mode] a new instance of Mode
  #
  # source://tty-reader//lib/tty/reader/mode.rb#11
  def initialize(input = T.unsafe(nil)); end

  # Echo given block
  #
  # @api public
  # @param is_on [Boolean]
  #
  # source://tty-reader//lib/tty/reader/mode.rb#20
  def echo(is_on = T.unsafe(nil), &block); end

  # Use raw mode in the given block
  #
  # @api public
  # @param is_on [Boolean]
  #
  # source://tty-reader//lib/tty/reader/mode.rb#33
  def raw(is_on = T.unsafe(nil), &block); end
end

# @api public
#
# source://tty-reader//lib/tty/reader.rb#25
TTY::Reader::NEWLINE = T.let(T.unsafe(nil), Integer)

# source://tty-reader//lib/tty/reader/version.rb#5
TTY::Reader::VERSION = T.let(T.unsafe(nil), String)

# source://tty-reader//lib/tty/reader/win_console.rb#7
class TTY::Reader::WinConsole
  # @return [WinConsole] a new instance of WinConsole
  #
  # source://tty-reader//lib/tty/reader/win_console.rb#26
  def initialize(input); end

  # Escape codes
  #
  # @api public
  # @return [Array[Integer]]
  #
  # source://tty-reader//lib/tty/reader/win_console.rb#24
  def escape_codes; end

  # Get a character from console blocking for input
  #
  # @api private
  # @param echo [Boolean] whether to echo input back or not, defaults to true
  # @param raw [Boolean] whether to use raw mode or not, defaults to false
  # @param nonblock [Boolean] whether to wait for input or not, defaults to false
  # @return [String]
  #
  # source://tty-reader//lib/tty/reader/win_console.rb#45
  def get_char(echo: T.unsafe(nil), raw: T.unsafe(nil), nonblock: T.unsafe(nil)); end

  # source://tty-reader//lib/tty/reader/win_console.rb#72
  def get_char_blocking; end

  # source://tty-reader//lib/tty/reader/win_console.rb#76
  def get_char_echo_blocking; end

  # source://tty-reader//lib/tty/reader/win_console.rb#68
  def get_char_echo_non_blocking; end

  # Get the char for last key pressed, or if no keypress return nil
  #
  # @api private
  #
  # source://tty-reader//lib/tty/reader/win_console.rb#64
  def get_char_non_blocking; end

  # Check if IO has user input
  #
  # @api private
  # @return [Boolean]
  #
  # source://tty-reader//lib/tty/reader/win_console.rb#85
  def input_ready?; end

  # Key codes
  #
  # @api public
  # @return [Hash[Symbol]]
  #
  # source://tty-reader//lib/tty/reader/win_console.rb#17
  def keys; end
end

# source://tty-reader//lib/tty/reader/win_console.rb#8
TTY::Reader::WinConsole::ESC = T.let(T.unsafe(nil), String)

# source://tty-reader//lib/tty/reader/win_console.rb#10
TTY::Reader::WinConsole::EXT_HEX = T.let(T.unsafe(nil), String)

# source://tty-reader//lib/tty/reader/win_console.rb#9
TTY::Reader::WinConsole::NUL_HEX = T.let(T.unsafe(nil), String)
