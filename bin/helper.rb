equire 'tempfile'
require 'json'
require "rubygems"

def msg(title, &block)
  puts "\n" + "-"*10 + title + "-"*10
  block.call
  puts "-"*10 + "-------" + "-"*10 + "\n"
end

def print_usage
  puts <<EOF

  Usage: applenium <command-name> [parameters] [options]

  <command-name> can be one of
    help
      prints more detailed help information.
    gen
      generate a features folder structure.
    version
      prints the gem version

  <options> can be
     -v, --verbose   Turns on verbose logging
EOF
end

def print_help
  puts <<EOF

  Usage: applenium <command-name> [parameters] [options]

  <command-name> can be one of
    help
    gen
    version

    Commands:
      help : prints more detailed help information.

      gen  : creates a skeleton features dir. This is usually used once when
             setting up selnium-cucumber to ensure that the features folder contains
             the right step definitions and environment to run with cucumber.

      version : prints the gem version

  <Options>
      -v, --verbose  Turns on verbose logging
EOF
end
