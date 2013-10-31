# ~/.irbrc
# ========

# -*- encoding: utf-8 -*-
# vim:syntax=ruby


IRB.conf[:PROMPT_MODE] = :SIMPLE


# Readline completion
# -------------------

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:USE_READLINE] = true

IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"


# Bundler
# -------

require 'rubygems'
require 'bundler/setup'


# FileUtils
# ---------

require 'fileutils'
Kernel.extend FileUtils

# Verbosity
# ---------

# `nil`   => `0` => silence
# `false` => `1` => default
# `true`  => `2` => verbose

$VERBOSE = true
$DEBUG = true
