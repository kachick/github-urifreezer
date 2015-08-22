#!/usr/bin/env ruby
# coding: us-ascii

require 'thor'
require_relative '../lib/github/urifreezer'

class GhUF < Thor
  desc 'based-URI', 'Print the fixed URI under latest commit of the branch'
  def fix(uri)
    puts Github::URIFreezer.fix(uri)
  end
end

GhUF.start ['fix', *ARGV]
