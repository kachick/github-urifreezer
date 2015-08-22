# coding: us-ascii

require_relative 'spec_helper'

describe Github::URIFreezer do
  before :each do
    @target = 'https://github.com/kachick/striuct/blob/gh-pages/yard/file.MIT-LICENSE.html#L6-L11'
    @result = URI.parse 'https://github.com/kachick/striuct/blob/0e089fe7f97c444a4c5ba3a571d300078b87d17e/yard/file.MIT-LICENSE.html#L6-L11'
  end

  describe '.fix' do
    it { expect(Github::URIFreezer.fix @target).to eq(@result) }
    it { expect(Github::URIFreezer.fix URI.parse(@target)).to eq(@result) }
  end
end
