# coding: us-ascii
# frozen_string_literal: true

# Copyright (c) 2015 Kenichi Kamiya

require 'uri'
require 'open-uri'
require 'json'
require_relative 'urifreezer/version'

module GitHub
  module URIFreezer
    class << self
      # @param uri [String, URI]
      # @return [URI]
      # @example
      #   When a referenced URI is "https://github.com/kachick/striuct/blob/gh-pages/yard/file.MIT-LICENSE.html#L6-L11"
      #   Then the frozen URI will be "https://github.com/kachick/striuct/blob/0e089fe7f97c444a4c5ba3a571d300078b87d17e/yard/file.MIT-LICENSE.html#L6-L11"
      #
      def fix(uri)
        uri = uri.kind_of?(URI) ? uri : URI.parse(uri)
        if %r!\A/(?<user_blob>(?<user_pj>[^/]+/[^/]+)/blob)/(?<branch>[^/]+)/?(?<suffix>.*)! =~ uri.path
          # GitHub API v3
          api_res = URI.open("https://api.github.com/repos/#{user_pj}/commits/#{branch}")
          api = JSON.parse(api_res.read, symbolize_names: true)
          URI::HTTPS.new(uri.scheme, nil, uri.host, nil, nil, [nil, user_blob, api.fetch(:sha), suffix].join('/'), nil, nil, uri.fragment, true)
        else
          raise "given an unexpected URI: #{uri}"
        end
      end
    end
  end
end
