[![Travis-CI Build Status](https://secure.travis-ci.org/stonevil/mono4-cookbook.png?branch=master)](https://travis-ci.org/stonevil/mono4-cookbook)


[![Code Climate](https://codeclimate.com/github/stonevil/mono4-cookbook/badges/gpa.svg)](https://codeclimate.com/github/stonevil/mono4-cookbook)

[![Stories in Ready](https://badge.waffle.io/stonevil/mono4-cookbook.png?label=ready&title=Ready)](https://waffle.io/stonevil/mono4-cookbook)


Description
===========

Installs and configures Mono Framework v4.x. Can optionally build and install Mono Framework from sources.

Requirements
============

Platform:

* Debian 7.8
* Ubuntu 12.04, 14.04
* CentOS 7.0
* RedHat, etc

The following cookbooks are dependencies:

* apt
* yum
* yum-epel
* git
* build-essential

Recipes
=======

* default - the recipe you want in your run-list.

Usage
=====

Simply add the `mono4::default` recipe to the node where you want Mono Framework v4.x installed.

Attributes
==========

Most attributes under mono4 are basic attributes needed for correctly installing the framework.

* ['mono4']['install_method'] - choose installation method: package or source. Source method do not recommended.
* ['mono4']['source']['git_uri'] - git url for Mono sources.
* ['mono4']['source']['git_branch'] - branch name used for source method installation.

License and Author
==================
Author: Myroslav Rys (<stonevil@gmail.com>)
