GitHub URI Freezer
=======================

NOTE: [GitHub has been provided `y` option](https://help.github.com/articles/using-keyboard-shortcuts/#source-code-browsing ) :smile:

![Build Status](https://github.com/kachick/github-urifreezer/actions/workflows/test_behaviors.yml/badge.svg?branch=main)
[![Gem Version](https://badge.fury.io/rb/github-urifreezer.png)](http://badge.fury.io/rb/github-urifreezer)

Description
-----------

GitHub referenced URI(branch/path#Ln-Lm) is very useful to communicate.
But they are temporary and unsteady, newer commits modify the meanings.
This script replaces them with other URI that based to latest-commit of the branch.

Usage
-----

Require Ruby 2.6 or later

```console
$ gem install github-urifreezer
$ ghuf.rb 'https://github.com/rails/rails/blob/v5.2.6/activesupport/lib/active_support.rb#L33'
https://github.com/rails/rails/blob/48661542a2607d55f436438fe21001d262e61fec/activesupport/lib/active_support.rb#L33
```
