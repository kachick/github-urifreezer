#!/usr/bin/env ruby
# coding: us-ascii
# frozen_string_literal: true

require 'bundler/setup'
require 'thor'
require_relative '../lib/github/urifreezer'

class GhUF < Thor
  desc 'based-URI', 'Print the fixed URI under latest commit of the branch'
  def fix(uri)
    puts GitHub::URIFreezer.fix(uri)
  end
end

GhUF.start(['fix', *ARGV])
