# coding: us-ascii
# frozen_string_literal: true

require_relative '../spec_helper'

RSpec.describe GitHub::URIFreezer do
  let(:target) { 'https://github.com/kachick/github-urifreezer/blob/github-urlfreezer-0.0.1/Rakefile#L6' }
  let(:result) { URI.parse 'https://github.com/kachick/github-urifreezer/blob/6c55bcd6721b1bdff99cbb9a5241b5f38f7eb062/Rakefile#L6' }

  describe '.fix' do
    it { expect(GitHub::URIFreezer.fix(target)).to eq(result) }
    it { expect(GitHub::URIFreezer.fix(URI.parse(target))).to eq(result) }
  end
end
