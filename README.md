Github URI Freezer
=======================

[OBSOLETED] Github gets `y` option https://help.github.com/articles/using-keyboard-shortcuts/#source-code-browsing

[![Build Status](https://secure.travis-ci.org/kachick/github-urifreezer.png)](http://travis-ci.org/kachick/github-urifreezer)
[![Gem Version](https://badge.fury.io/rb/github-urifreezer.png)](http://badge.fury.io/rb/github-urifreezer)
[![Dependency Status](https://gemnasium.com/kachick/github-urifreezer.svg)](https://gemnasium.com/kachick/github-urifreezer)

Description
-----------

Github referenced URI(branch/path#Ln-Lm) is very useful to communicate.
But they are temporary and unsteady, newer commits modify the meanings.
This script replaces them with other URI that based to latest-commit of the branch.

Usage
-----

```shell
$ ghuf https://github.com/user/pj/blob/branch/path#Ln-Lm
   #=> https://github.com/user/pj/blob/LATEST-COMMIT-OF-THE-BRANCH/path#Ln-Lm
```

Requirements
-------------

* Ruby - [2.2 or later](http://travis-ci.org/#!/kachick/github-urifreezer)

Install
-------

```shell
$ gem install github-urifreezer
```

License
--------

The MIT X11 License  
Copyright (c) 2015 Kenichi Kamiya  
See MIT-LICENSE for further details.
