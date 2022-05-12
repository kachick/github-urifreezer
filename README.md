GitHub URI Freezer
=======================

![Build Status](https://github.com/kachick/github-urifreezer/actions/workflows/test_behaviors.yml/badge.svg?branch=main)
[![Gem Version](https://badge.fury.io/rb/github-urifreezer.png)](http://badge.fury.io/rb/github-urifreezer)

Getting GitHub permanent links to files

Usage
-----

Require Ruby 2.7 or later

```console
$ gem install github-urifreezer
$ ghuf.rb 'https://github.com/rails/rails/blob/v5.2.6/activesupport/lib/active_support.rb#L33'
https://github.com/rails/rails/blob/48661542a2607d55f436438fe21001d262e61fec/activesupport/lib/active_support.rb#L33
```

NOTE
---

* [GitHub has been provided `y` option for browser access](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/getting-permanent-links-to-files)