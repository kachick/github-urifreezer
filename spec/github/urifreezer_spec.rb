# coding: us-ascii

require_relative '../spec_helper'

RSpec.describe GitHub::URIFreezer do
  let(:target) { 'https://github.com/kachick/striuct/blob/gh-pages/yard/file.MIT-LICENSE.html#L6-L11' }
  let(:result) { URI.parse 'https://github.com/kachick/striuct/blob/0e089fe7f97c444a4c5ba3a571d300078b87d17e/yard/file.MIT-LICENSE.html#L6-L11' }

  describe '.fix' do
    it { expect(GitHub::URIFreezer.fix target).to eq(result) }
    it { expect(GitHub::URIFreezer.fix URI.parse(target)).to eq(result) }
  end
end
