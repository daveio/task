# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `tty-color` gem.
# Please instead update this file by running `bin/tapioca gem tty-color`.


# source://tty-color//lib/tty/color/mode.rb#3
module TTY; end

# Responsible for checking terminal color support
#
# @api public
#
# source://tty-color//lib/tty/color/mode.rb#4
module TTY::Color
  extend ::TTY::Color

  # Check if terminal supports colors
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-color//lib/tty/color.rb#27
  def color?; end

  # Check if command can be run
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-color//lib/tty/color.rb#67
  def command?(cmd); end

  # Detect if color support has been disabled with NO_COLOR ENV var.
  #
  # @api public
  # @return [Boolean] true when terminal color support has been disabled, false otherwise
  #
  # source://tty-color//lib/tty/color.rb#40
  def disabled?; end

  # Check how many colors this terminal supports
  #
  # @api public
  # @return [Integer]
  #
  # source://tty-color//lib/tty/color.rb#49
  def mode; end

  # @api public
  #
  # source://tty-color//lib/tty/color.rb#20
  def output; end

  # @api public
  #
  # source://tty-color//lib/tty/color.rb#20
  def output=(_arg0); end

  # Check if terminal supports colors
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-color//lib/tty/color.rb#27
  def support?; end

  # Check if terminal supports colors
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-color//lib/tty/color.rb#27
  def supports?; end

  # Check if terminal supports colors
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-color//lib/tty/color.rb#27
  def supports_color?; end

  # Check if output is linked with terminal
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-color//lib/tty/color.rb#58
  def tty?; end

  # @api public
  #
  # source://tty-color//lib/tty/color.rb#20
  def verbose; end

  # @api public
  #
  # source://tty-color//lib/tty/color.rb#20
  def verbose=(_arg0); end

  # Check if Windowz
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-color//lib/tty/color.rb#76
  def windows?; end
end

# source://tty-color//lib/tty/color/mode.rb#5
class TTY::Color::Mode
  # @return [Mode] a new instance of Mode
  #
  # source://tty-color//lib/tty/color/mode.rb#31
  def initialize(env); end

  # Check TERM environment for colors
  #
  # @api private
  # @return [NoValue, Integer]
  #
  # source://tty-color//lib/tty/color/mode.rb#57
  def from_term; end

  # Shell out to tput to check color support
  #
  # @api private
  # @return [NoValue, Integer]
  #
  # source://tty-color//lib/tty/color/mode.rb#77
  def from_tput; end

  # Detect supported colors
  #
  # @api public
  # @return [Integer] out of 0, 8, 16, 52, 66, 256, 2^24
  #
  # source://tty-color//lib/tty/color/mode.rb#41
  def mode; end
end

# source://tty-color//lib/tty/color/mode.rb#29
TTY::Color::Mode::METHODS = T.let(T.unsafe(nil), Array)

# source://tty-color//lib/tty/color/mode.rb#18
TTY::Color::Mode::TERM_16 = T.let(T.unsafe(nil), Regexp)

# source://tty-color//lib/tty/color/mode.rb#6
TTY::Color::Mode::TERM_24BIT = T.let(T.unsafe(nil), Regexp)

# source://tty-color//lib/tty/color/mode.rb#9
TTY::Color::Mode::TERM_256 = T.let(T.unsafe(nil), Regexp)

# source://tty-color//lib/tty/color/mode.rb#16
TTY::Color::Mode::TERM_52 = T.let(T.unsafe(nil), Regexp)

# source://tty-color//lib/tty/color/mode.rb#13
TTY::Color::Mode::TERM_64 = T.let(T.unsafe(nil), Regexp)

# source://tty-color//lib/tty/color/mode.rb#27
TTY::Color::Mode::TERM_8 = T.let(T.unsafe(nil), Regexp)

# 8 bits per RGB channel
#
# source://tty-color//lib/tty/color/mode.rb#7
TTY::Color::Mode::TRUECOLORS = T.let(T.unsafe(nil), Integer)

# @api public
#
# source://tty-color//lib/tty/color.rb#14
module TTY::Color::NoValue; end

# source://tty-color//lib/tty/color/support.rb#5
class TTY::Color::Support
  # Initialize a color support
  #
  # @api public
  # @return [Support] a new instance of Support
  #
  # source://tty-color//lib/tty/color/support.rb#30
  def initialize(env, verbose: T.unsafe(nil)); end

  # Detect if color support has been disabled with NO_COLOR ENV var.
  #
  # @api public
  # @return [Boolean] true when terminal color support has been disabled, false otherwise
  #
  # source://tty-color//lib/tty/color/support.rb#58
  def disabled?; end

  # Attempt to load curses to check color support
  #
  # @api private
  # @return [Boolean]
  #
  # source://tty-color//lib/tty/color/support.rb#97
  def from_curses(curses_class = T.unsafe(nil)); end

  # Check if environment specifies color variables
  #
  # @api private
  #
  # source://tty-color//lib/tty/color/support.rb#88
  def from_env; end

  # Inspect environment $TERM variable for color support
  #
  # @api private
  #
  # source://tty-color//lib/tty/color/support.rb#66
  def from_term; end

  # Shell out to tput to check color support
  #
  # @api private
  #
  # source://tty-color//lib/tty/color/support.rb#77
  def from_tput; end

  # Detect if terminal supports color
  #
  # @api public
  # @return [Boolean] true when terminal supports color, false otherwise
  #
  # source://tty-color//lib/tty/color/support.rb#41
  def support?; end
end

# source://tty-color//lib/tty/color/support.rb#7
TTY::Color::Support::ENV_VARS = T.let(T.unsafe(nil), Array)

# source://tty-color//lib/tty/color/support.rb#6
TTY::Color::Support::SOURCES = T.let(T.unsafe(nil), Array)

# source://tty-color//lib/tty/color/support.rb#9
TTY::Color::Support::TERM_REGEX = T.let(T.unsafe(nil), Regexp)

# source://tty-color//lib/tty/color/version.rb#5
TTY::Color::VERSION = T.let(T.unsafe(nil), String)
