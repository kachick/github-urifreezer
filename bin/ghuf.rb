#!/usr/bin/env ruby
# coding: us-ascii

require_relative '../lib/github/urifreezer'

puts Github::URIFreezer.fix(ARGV.shift)
