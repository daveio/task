# Task CLI

A command-line interface application built with Ruby and Commander that helps you manage tasks.

## Features

- **About** - Learn more about the Task CLI application
- **Setup** - Configure the Task CLI application
- **New** - Create a new task
- **Version** - Display the current version of the Task CLI application

## Installation

### Prerequisites

- Ruby 2.6 or higher
- Bundler

### Steps

1. Clone this repository:
   ```
   git clone [repository-url]
   cd task-cli
   ```

2. Install dependencies:
   ```
   bundle install
   ```

3. Make the CLI executable available:
   ```
   # Option 1: Add the bin directory to your PATH
   export PATH="$PATH:$(pwd)/bin"
   
   # Option 2: Create a symlink to a directory in your PATH
   ln -s "$(pwd)/bin/task" /usr/local/bin/task
   
   # Option 3: Use it with the full path
   ./bin/task
   ```

## Usage

The Task CLI provides several commands to help you manage tasks:

### Get help

```
task help
```

### Display version information

```
task version
```

### Learn more about the application

```
task about
```

### Configure the application

```
task setup
```

### Create a new task

```
task new "Task description" --priority high --due "2023-12-31"
```

## Command Details

### About

The `about` command provides information about the Task CLI application, its purpose, and how it can help you manage tasks.

```
task about
```

### Setup

The `setup` command guides you through the process of configuring the Task CLI application.

```
task setup
```

### New

The `new` command allows you to create a new task with various options.

```
task new "Task description" [options]
```

Options:
- `--priority VALUE` - Set the priority (high, medium, low)
- `--due DATE` - Set the due date
- `--tags LIST` - Add comma-separated tags

### Version

The `version` command displays the current version of the Task CLI application.

```
task version
```

## Development

### Adding new commands

1. Create a new command file in `lib/task_cli/commands/`
2. Implement the command logic
3. Require the file in `lib/task_cli.rb`
4. Register the command in the main program

## License

[License information]

## Contributing

[Contribution guidelines]

