# encoding: UTF-8

# frozen_string_literal: true

require 'yaml'
require 'thor'
require 'thor/actions'
require 'thor_plus/actions'

module CloneIo
  # The Command Line Interface (CLI) for the gem.
  class CLI < Thor
    include Thor::Actions
    include ThorPlus::Actions

    package_name CloneIo::Identity.version_label

    def initialize args = [], options = {}, config = {}
      super args, options, config
    end

    desc '-e, [--edit]', 'Edit gem settings in default editor.'
    map %w[-e --edit] => :edit
    def edit
      `#{editor} $HOME/#{CloneIo::Identity.file_name}`
    end

    desc '-v, [--version]', 'Show gem version.'
    map %w[-v --version] => :version
    def version
      say CloneIo::Identity.version_label
    end

    desc '-h, [--help=HELP]', 'Show this message or get help for a command.'
    map %w[-h --help] => :help
    def help task = nil
      say and super
    end
  end
end
