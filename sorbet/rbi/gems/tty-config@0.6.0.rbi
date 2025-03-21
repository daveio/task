# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `tty-config` gem.
# Please instead update this file by running `bin/tapioca gem tty-config`.


# source://tty-config//lib/tty/config/version.rb#3
module TTY; end

# Responsible for managing application configuration
#
# @api public
#
# source://tty-config//lib/tty/config/version.rb#4
class TTY::Config
  include ::TTY::Config::Marshallers

  # Create a configuration instance
  #
  # @api public
  # @return [Config] a new instance of Config
  # @yield [_self]
  # @yieldparam _self [TTY::Config] the object that the method was called on
  #
  # source://tty-config//lib/tty/config.rb#91
  def initialize(settings = T.unsafe(nil)); end

  # Define an alias to a nested key
  #
  # @api public
  # @example
  #   alias_setting(:foo, to: :bar)
  # @param keys [Array<String>] the alias key
  #
  # source://tty-config//lib/tty/config.rb#392
  def alias_setting(*keys, to: T.unsafe(nil)); end

  # Append values to an already existing nested key
  #
  # @api public
  # @example
  #   append(1, 2, to: %i[foo bar])
  # @param values [Array<Object>] the values to append
  # @param Array<String, [Array<String, Symbol] to
  # the nested key to append to] Symbol] to
  #   the nested key to append to
  # @return [Array<Object>] the values for a nested key
  #
  # source://tty-config//lib/tty/config.rb#335
  def append(*values, to: T.unsafe(nil)); end

  # Add path to locations to search in
  #
  # @api public
  # @example
  #   append_path(Dir.pwd)
  # @param path [String] the path to append
  # @return [Array<String>]
  #
  # source://tty-config//lib/tty/config.rb#139
  def append_path(path); end

  # Auto load env variables
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#170
  def autoload_env; end

  # Check if env variables are auto loaded
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-config//lib/tty/config.rb#163
  def autoload_env?; end

  # Delete a value from a nested key
  #
  # @api public
  # @example
  #   delete(:foo, :bar, :baz)
  # @example
  #   delete(:unknown) { |key| "#{key} isn't set" }
  # @param keys [Array<String, Symbol>] the keys for a value deletion
  # @return [Object] the deleted value(s)
  # @yield [key] Invoke the block with a missing key
  #
  # source://tty-config//lib/tty/config.rb#378
  def delete(*keys, &default); end

  # The prefix used for searching ENV variables
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#82
  def env_prefix; end

  # The prefix used for searching ENV variables
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#82
  def env_prefix=(_arg0); end

  # The string used to separate parts in ENV variable name
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#86
  def env_separator; end

  # The string used to separate parts in ENV variable name
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#86
  def env_separator=(_arg0); end

  # Check if configuration file exists
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-config//lib/tty/config.rb#441
  def exist?; end

  # The name of the configuration file extension
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#74
  def extname; end

  # Set extension name
  #
  # api public
  #
  # @api public
  # @raise [TTY::Config::UnsupportedExtError]
  #
  # source://tty-config//lib/tty/config.rb#120
  def extname=(name); end

  # Fetch value under a composite key
  #
  # @api public
  # @example
  #   fetch(:foo, :bar, :baz)
  # @example
  #   fetch("foo.bar.baz")
  # @param keys [Array<String, Symbol>, String] the keys to get value at
  # @param default [Object] the default value
  # @return [Object]
  #
  # source://tty-config//lib/tty/config.rb#285
  def fetch(*keys, default: T.unsafe(nil), &block); end

  # The name of the configuration file without extension
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#70
  def filename; end

  # The name of the configuration file without extension
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#70
  def filename=(_arg0); end

  # Find configuration file matching filename and extension
  #
  # @api private
  #
  # source://tty-config//lib/tty/config.rb#427
  def find_file; end

  # The key delimiter used for specifying deeply nested keys
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#66
  def key_delim; end

  # A collection of config paths
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#62
  def location_paths; end

  # Merge in other configuration settings
  #
  # @api public
  # @param other_settings [Hash{Symbol => Object]]
  # @return [Hash, nil] the combined settings or nil
  #
  # source://tty-config//lib/tty/config.rb#315
  def merge(other_settings); end

  # Check if configuration file exists
  #
  # @api public
  # @return [Boolean]
  #
  # source://tty-config//lib/tty/config.rb#441
  def persisted?; end

  # Insert location path at the begining
  #
  # @api public
  # @example
  #   prepend_path(Dir.pwd)
  # @param path [String] the path to prepend
  # @return [Array<String>]
  #
  # source://tty-config//lib/tty/config.rb#154
  def prepend_path(path); end

  # Find and read a configuration file.
  #
  # If the file doesn't exist or if there is an error loading it
  # the TTY::Config::ReadError will be raised.
  #
  # @api public
  # @param file [String] the path to the configuration file to be read
  # @param format [String] the format to read configuration in
  # @raise [TTY::Config::ReadError]
  #
  # source://tty-config//lib/tty/config.rb#460
  def read(file = T.unsafe(nil), format: T.unsafe(nil)); end

  # Remove a set of values from a nested key
  #
  # @api public
  # @example
  #   remove(1, 2, from: :foo)
  # @example
  #   remove(1, 2, from: %i[foo bar])
  # @param values [Array<Object>] the values to remove from a nested key
  # @param from [Array<String, Symbol>, String] the nested key to remove values from
  # @raise [ArgumentError]
  #
  # source://tty-config//lib/tty/config.rb#354
  def remove(*values, from: T.unsafe(nil)); end

  # Set a value for a composite key and overrides any existing keys
  # Keys are case-insensitive
  #
  # @api public
  # @example
  #   set(:foo, :bar, :baz, value: 2)
  # @example
  #   set(:foo, :bar, :baz) { 2 }
  # @example
  #   set("foo.bar.baz", value: 2)
  # @param keys [Array<String, Symbol>, String] the nested key to set value for
  # @param value [Object] the value to set
  # @return [Object] the set value
  #
  # source://tty-config//lib/tty/config.rb#195
  def set(*keys, value: T.unsafe(nil), &block); end

  # Set file name and extension
  #
  # @api public
  # @example
  #   set_file_metadata("config.yml")
  # @param file [File] the file to set metadata for
  #
  # source://tty-config//lib/tty/config.rb#517
  def set_file_metadata(file); end

  # Bind a key to ENV variable
  #
  # @api public
  # @example
  #   set_from_env(:host)
  #   set_from_env(:foo, :bar) { 'HOST' }
  # @param keys [Array<String>] the keys to bind to ENV variables
  #
  # source://tty-config//lib/tty/config.rb#246
  def set_from_env(*keys, &block); end

  # Set a value for a composite key if not present already
  #
  # @api public
  # @example
  #   set_if_empty(:foo, :bar, :baz, value: 2)
  # @param keys [Array<String, Symbol>] the keys to set value for
  # @param value [Object] the value to set
  # @return [Object, nil] the set value or nil
  #
  # source://tty-config//lib/tty/config.rb#229
  def set_if_empty(*keys, value: T.unsafe(nil), &block); end

  # Find configuration file matching filename and extension
  #
  # @api private
  #
  # source://tty-config//lib/tty/config.rb#427
  def source_file; end

  # Convert config key to standard ENV var name
  #
  # @api private
  # @param key [String]
  # @return [String]
  #
  # source://tty-config//lib/tty/config.rb#260
  def to_env_key(key); end

  # Current configuration
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#525
  def to_h; end

  # Current configuration
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#525
  def to_hash; end

  # Register a validation rule for a nested key
  #
  # @api public
  # @param keys [Array<String>] a deep nested keys
  # @param validator [Proc] the logic to use to validate given nested key
  #
  # source://tty-config//lib/tty/config.rb#417
  def validate(*keys, &validator); end

  # The validations for this configuration
  #
  # @api public
  #
  # source://tty-config//lib/tty/config.rb#78
  def validators; end

  # Write current configuration to a file.
  #
  # @api public
  # @example
  #   write(force: true, create: true)
  # @param create [Boolean] whether or not to create missing path directories, false by default
  # @param format [String] the format name for the configuration file, :auto by defualt
  # @param path [String] the custom path to use to write a file to
  # @param force [Boolean] whether or not to overwrite existing configuration file, false by default
  # @param file [String] the file to write to
  # @raise [TTY::Config::WriteError]
  #
  # source://tty-config//lib/tty/config.rb#494
  def write(file = T.unsafe(nil), create: T.unsafe(nil), force: T.unsafe(nil), format: T.unsafe(nil), path: T.unsafe(nil)); end

  private

  # Ensure that value is set either through parameter or block
  #
  # @api private
  #
  # source://tty-config//lib/tty/config.rb#535
  def assert_either_value_or_block(value, block); end

  # Check if key passes all registered validations for a key
  #
  # @api private
  # @param key [String] the key to validate a value for
  # @param value [Object] the value to check
  #
  # source://tty-config//lib/tty/config.rb#580
  def assert_valid(key, value); end

  # Check if object is a proc with no arguments
  #
  # @api private
  # @return [Boolean]
  #
  # source://tty-config//lib/tty/config.rb#548
  def callable_without_params?(object); end

  # Check if a file can be written to
  #
  # @api private
  # @param file [String] the configuration file
  # @param force [Boolean] whether or not to force writing
  # @raise [TTY::Config::WriteError]
  # @return [nil]
  #
  # source://tty-config//lib/tty/config.rb#773
  def check_can_write(file, force); end

  # Convert key to an array of key elements
  #
  # @api private
  # @param keys [String, Array<String, Symbol>]
  # @return [Array<String>]
  #
  # source://tty-config//lib/tty/config.rb#625
  def convert_to_keys(keys); end

  # Crate a marshaller instance based on the extension name
  #
  # @api private
  # @param ext [String] the extension name
  # @return [nil, Marshaller]
  #
  # source://tty-config//lib/tty/config.rb#813
  def create_marshaller(ext); end

  # Create any missing directories
  #
  # @api private
  # @param filepath [Pathname] the file path
  # @param create [Boolean] whether or not to create missing directories
  # @raise [TTY::Config::WriteError]
  # @return [nil]
  #
  # source://tty-config//lib/tty/config.rb#796
  def create_missing_dirs(filepath, create); end

  # Delete a deeply nested key
  #
  # @api private
  # @param keys [Array<String>] the nested key to delete
  # @param the [Hash{String => Object}] settings to delete key from
  # @return [Object] the deleted object(s)
  #
  # source://tty-config//lib/tty/config.rb#708
  def deep_delete(*keys, settings, &default); end

  # Fetch value under deeply nested keys with indiffernt key access
  #
  # @api private
  # @param settings [Hash] the settings to search
  # @param keys [Array<Object>] the nested key to look up
  # @return [Object, nil] the value or nil
  #
  # source://tty-config//lib/tty/config.rb#666
  def deep_fetch(settings, *keys); end

  # Merge two deeply nested hash objects
  #
  # @api private
  # @param this_hash [Hash]
  # @param other_hash [Hash]
  # @return [Hash] the merged hash object
  #
  # source://tty-config//lib/tty/config.rb#685
  def deep_merge(this_hash, other_hash, &block); end

  # Set value under deeply nested keys
  #
  # The scan starts with the top level key and follows
  # a sequence of keys. In case where intermediate keys do
  # not exist, a new hash is created.
  #
  # @api private
  # @param settings [Hash]
  # @param keys [Array<Object>] the keys to nest
  # @return [Hash] the nested setting
  #
  # source://tty-config//lib/tty/config.rb#601
  def deep_set(settings, *keys); end

  # Wrap callback in a proc object that includes validation
  # that will be performed at point when a new proc is invoked.
  #
  # @api private
  # @param key [String] the key to set validation for
  # @param callback [Proc] the callback to wrap
  # @return [Proc]
  #
  # source://tty-config//lib/tty/config.rb#564
  def delay_validation(key, callback); end

  # Convert nested key from an array to a string
  #
  # @api private
  # @example
  #   flatten_keys(%i[foo bar baz]) # => "foo.bar.baz"
  # @param keys [Array<String, Symbol>] the nested key to convert
  # @return [String] the delimited nested key
  #
  # source://tty-config//lib/tty/config.rb#646
  def flatten_keys(keys); end

  # Create a full path to a configuration file
  #
  # @api private
  # @param file [String] the configuration file
  # @param path [String] the path to configuration file
  # @return [String] the full path to a file
  #
  # source://tty-config//lib/tty/config.rb#750
  def fullpath(file, path); end

  # Marshal hash object into a configuration file content
  #
  # @api private
  # @param object [Hash{String => Object}] the object to convert to string
  # @return [String]
  #
  # source://tty-config//lib/tty/config.rb#846
  def marshal(object, ext: T.unsafe(nil)); end

  # Search for a configuration file in a path
  #
  # @api private
  # @param path [String] the path to search
  # @return [String, nil] the configuration file path or nil
  #
  # source://tty-config//lib/tty/config.rb#729
  def search_in_path(path); end

  # Unmarshal content into a hash object
  #
  # @api private
  # @param content [String] the content to convert into a hash object
  # @return [Hash{String => Object}]
  #
  # source://tty-config//lib/tty/config.rb#829
  def unmarshal(content, ext: T.unsafe(nil)); end

  class << self
    # Coerce a hash object into Config instance
    #
    # @api private
    # @return [TTY::Config]
    #
    # source://tty-config//lib/tty/config.rb#38
    def coerce(hash, &block); end

    # Convert string keys via method
    #
    # @api private
    # @param hash [Hash] the hash to normalize keys for
    # @param method [Symbol] the method to use for converting keys
    # @return [Hash{Symbol => Object}] the converted hash
    #
    # source://tty-config//lib/tty/config.rb#53
    def normalize_hash(hash, method = T.unsafe(nil)); end
  end
end

# Error raised when failed to load a dependency
#
# @api public
#
# source://tty-config//lib/tty/config.rb#23
class TTY::Config::DependencyLoadError < ::StandardError; end

# source://tty-config//lib/tty/config/dependency_loader.rb#5
module TTY::Config::DependencyLoader
  # Returns the value of attribute dep_name.
  #
  # source://tty-config//lib/tty/config/dependency_loader.rb#6
  def dep_name; end

  # Lazy load a dependency
  #
  # @api public
  #
  # source://tty-config//lib/tty/config/dependency_loader.rb#11
  def dependency(*dep_names, &block); end

  # source://tty-config//lib/tty/config/dependency_loader.rb#35
  def inherited(subclass); end

  # Try loading depedency
  #
  # @api private
  #
  # source://tty-config//lib/tty/config/dependency_loader.rb#27
  def load; end

  # Load dependency before object instatiation
  #
  # @api public
  #
  # source://tty-config//lib/tty/config/dependency_loader.rb#19
  def new(*_arg0); end

  private

  # Sets the attribute dep_name
  #
  # @param value the value to set the attribute dep_name to.
  #
  # source://tty-config//lib/tty/config/dependency_loader.rb#52
  def dep_name=(_arg0); end

  # source://tty-config//lib/tty/config/dependency_loader.rb#42
  def raise_error_message; end
end

# Responsible for converting a data object into content in INI format
#
# @api private
#
# source://tty-config//lib/tty/config/generator.rb#8
module TTY::Config::Generator
  class << self
    # Generate file content based on the data hash
    #
    # @api public
    # @example
    #   generate({"foo" => {"bar" => "baz"}})
    #   # => "[foo]\nbar = baz\n"
    # @param data [Hash{String => Object}] the data to convert to INI file format
    # @param separator [String] the separator for the key and value pairs
    # @return [String] the INI file content
    #
    # source://tty-config//lib/tty/config/generator.rb#24
    def generate(data, separator: T.unsafe(nil)); end

    private

    # Generate key and value pair
    #
    # @api private
    # @param key [String] the key to convert to INI format
    # @param value [Object] the value to convert to INI format
    # @param separator [String] the separator for the key and value pair
    # @return [String] the formatted key and value pair
    #
    # source://tty-config//lib/tty/config/generator.rb#100
    def generate_pair(key, value, separator); end

    # Generate sections with key and value pairs
    #
    # @api private
    # @param sections [Hash{String => Object}] the sections to convert to INI format
    # @param separator [String] the separator for the key and value pairs
    # @return [Array<String>] the formatted sections with key and value pairs
    #
    # source://tty-config//lib/tty/config/generator.rb#117
    def generate_sections(sections, separator); end

    # Generate key and value pairs
    #
    # @api private
    # @param values [Hash{String => Object}] the values to convert to INI format
    # @param separator [String] the separator for the key and value pairs
    # @return [Array<String>] the formatted key and value pairs
    #
    # source://tty-config//lib/tty/config/generator.rb#78
    def generate_values(values, separator); end

    # Group data into sections and values
    #
    # @api private
    # @param data [Hash{String => Object}] the data to group
    # @return [Hash{Symbol => Hash}] the sections and values
    #
    # source://tty-config//lib/tty/config/generator.rb#44
    def group_into_sections_and_values(data); end

    # Check whether or not a value is a section
    #
    # @api private
    # @param value [Object] the value to check
    # @return [Boolean] return true if value is a section, false otherwise
    #
    # source://tty-config//lib/tty/config/generator.rb#61
    def section?(value); end
  end
end

# source://tty-config//lib/tty/config/marshaller.rb#7
module TTY::Config::Marshaller
  mixes_in_class_methods ::TTY::Config::DependencyLoader
  mixes_in_class_methods ::TTY::Config::Marshaller::ExtensionsStore

  # Marshal object into a given format
  #
  # @api public
  # @param _object [Object]
  # @raise [NotImplementedError]
  #
  # source://tty-config//lib/tty/config/marshaller.rb#52
  def marshal(_object, _options = T.unsafe(nil)); end

  # Unmarshal content into a hash object
  #
  # @api public
  # @param _content [String]
  # @raise [NotImplementedError]
  #
  # source://tty-config//lib/tty/config/marshaller.rb#61
  def unmarshal(_content, _options = T.unsafe(nil)); end

  class << self
    # @api private
    # @private
    #
    # source://tty-config//lib/tty/config/marshaller.rb#9
    def included(base); end
  end
end

# source://tty-config//lib/tty/config/marshaller.rb#17
module TTY::Config::Marshaller::ExtensionsStore
  # source://tty-config//lib/tty/config/marshaller.rb#18
  def ext; end

  # Set a list of extensions
  #
  # @api public
  # @example
  #   extenion "ext1", "ext2", "ext3"
  #
  # source://tty-config//lib/tty/config/marshaller.rb#28
  def extension(*extensions); end

  # Copy extensions to a subclass
  #
  # @api private
  # @param subclass [Object]
  #
  # source://tty-config//lib/tty/config/marshaller.rb#41
  def inherited(subclass); end
end

# source://tty-config//lib/tty/config/marshaller_registry.rb#5
class TTY::Config::MarshallerRegistry
  # @api private
  # @return [MarshallerRegistry] a new instance of MarshallerRegistry
  #
  # source://tty-config//lib/tty/config/marshaller_registry.rb#12
  def initialize(mappings = T.unsafe(nil)); end

  # source://tty-config//lib/tty/config/marshaller_registry.rb#40
  def [](name); end

  # source://tty-config//lib/tty/config/marshaller_registry.rb#24
  def exts; end

  # All registered marshallers
  #
  # @api private
  #
  # source://tty-config//lib/tty/config/marshaller_registry.rb#9
  def marshallers; end

  # source://tty-config//lib/tty/config/marshaller_registry.rb#16
  def names; end

  # source://tty-config//lib/tty/config/marshaller_registry.rb#20
  def objects; end

  # source://tty-config//lib/tty/config/marshaller_registry.rb#32
  def register(name, object); end

  # @return [Boolean]
  #
  # source://tty-config//lib/tty/config/marshaller_registry.rb#28
  def registered?(name_or_object); end

  # source://tty-config//lib/tty/config/marshaller_registry.rb#36
  def unregister(name); end
end

# source://tty-config//lib/tty/config/marshallers.rb#7
module TTY::Config::Marshallers
  # source://tty-config//lib/tty/config/marshallers.rb#18
  def extensions; end

  # source://tty-config//lib/tty/config/marshallers.rb#10
  def marshaller_registry; end

  # source://tty-config//lib/tty/config/marshallers.rb#14
  def marshallers; end

  # source://tty-config//lib/tty/config/marshallers.rb#26
  def register_marshaller(name, object); end

  # @return [Boolean]
  #
  # source://tty-config//lib/tty/config/marshallers.rb#22
  def registered_marshaller?(name_or_object); end

  # source://tty-config//lib/tty/config/marshallers.rb#30
  def unregister_marshaller(*names); end
end

# Responsible for marshalling content from and into HCL format
#
# @api public
#
# source://tty-config//lib/tty/config/marshallers/hcl_marshaller.rb#11
class TTY::Config::Marshallers::HCLMarshaller
  include ::TTY::Config::Marshaller
  extend ::TTY::Config::DependencyLoader
  extend ::TTY::Config::Marshaller::ExtensionsStore

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/hcl_marshaller.rb#18
  def marshal(object); end

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/hcl_marshaller.rb#22
  def unmarshal(content); end
end

# Responsible for marshalling content from and into INI format
#
# @api public
#
# source://tty-config//lib/tty/config/marshallers/ini_marshaller.rb#12
class TTY::Config::Marshallers::INIMarshaller
  include ::TTY::Config::Marshaller
  extend ::TTY::Config::DependencyLoader
  extend ::TTY::Config::Marshaller::ExtensionsStore

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/ini_marshaller.rb#19
  def marshal(object); end

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/ini_marshaller.rb#23
  def unmarshal(content); end
end

# Responsible for marshalling content from and into JSON format
#
# @api public
#
# source://tty-config//lib/tty/config/marshallers/json_marshaller.rb#11
class TTY::Config::Marshallers::JSONMarshaller
  include ::TTY::Config::Marshaller
  extend ::TTY::Config::DependencyLoader
  extend ::TTY::Config::Marshaller::ExtensionsStore

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/json_marshaller.rb#18
  def marshal(object); end

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/json_marshaller.rb#22
  def unmarshal(content); end
end

# Responsible for marshalling content from and into Java properties format
#
# @api public
#
# source://tty-config//lib/tty/config/marshallers/java_props_marshaller.rb#11
class TTY::Config::Marshallers::JavaPropsMarshaller
  include ::TTY::Config::Marshaller
  extend ::TTY::Config::DependencyLoader
  extend ::TTY::Config::Marshaller::ExtensionsStore

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/java_props_marshaller.rb#18
  def marshal(object); end

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/java_props_marshaller.rb#22
  def unmarshal(content); end
end

# source://tty-config//lib/tty/config/marshallers.rb#8
TTY::Config::Marshallers::NO_EXT = T.let(T.unsafe(nil), String)

# Responsible for marshalling content from and into TOML format
#
# @api public
#
# source://tty-config//lib/tty/config/marshallers/toml_marshaller.rb#11
class TTY::Config::Marshallers::TOMLMarshaller
  include ::TTY::Config::Marshaller
  extend ::TTY::Config::DependencyLoader
  extend ::TTY::Config::Marshaller::ExtensionsStore

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/toml_marshaller.rb#18
  def marshal(data); end

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/toml_marshaller.rb#22
  def unmarshal(content); end
end

# Responsible for marshalling content from and into XML format
#
# @api public
#
# source://tty-config//lib/tty/config/marshallers/xml_marshaller.rb#11
class TTY::Config::Marshallers::XMLMarshaller
  include ::TTY::Config::Marshaller
  extend ::TTY::Config::DependencyLoader
  extend ::TTY::Config::Marshaller::ExtensionsStore

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/xml_marshaller.rb#18
  def marshal(object); end

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/xml_marshaller.rb#22
  def unmarshal(content); end
end

# Responsible for marshalling content from and into YAML format
#
# @api public
#
# source://tty-config//lib/tty/config/marshallers/yaml_marshaller.rb#11
class TTY::Config::Marshallers::YAMLMarshaller
  include ::TTY::Config::Marshaller
  extend ::TTY::Config::DependencyLoader
  extend ::TTY::Config::Marshaller::ExtensionsStore

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/yaml_marshaller.rb#18
  def marshal(object); end

  # @api public
  #
  # source://tty-config//lib/tty/config/marshallers/yaml_marshaller.rb#22
  def unmarshal(content); end
end

# Error raised when key fails validation
#
# @api public
#
# source://tty-config//lib/tty/config.rb#25
class TTY::Config::ReadError < ::StandardError; end

# Erorrr raised when setting unknown file extension
#
# @api public
#
# source://tty-config//lib/tty/config.rb#29
class TTY::Config::UnsupportedExtError < ::StandardError; end

# source://tty-config//lib/tty/config/version.rb#5
TTY::Config::VERSION = T.let(T.unsafe(nil), String)

# Error raised when validation assertion fails
#
# @api public
#
# source://tty-config//lib/tty/config.rb#31
class TTY::Config::ValidationError < ::StandardError; end

# Error raised when issues writing configuration to a file
#
# @api public
#
# source://tty-config//lib/tty/config.rb#27
class TTY::Config::WriteError < ::StandardError; end
