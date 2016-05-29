# encoding: UTF-8

# frozen_string_literal: true

module CloneIo
  # Gem identity information.
  module Identity
    def self.name
      'clone.io'
    end

    def self.label
      'CloneIo'
    end

    def self.version
      '0.1.0'
    end

    def self.version_label
      "#{label} #{version}"
    end

    def self.file_name
      ".#{name}rc"
    end
  end
end
