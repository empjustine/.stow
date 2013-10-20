# ~/.irbrc
# ========

# -*- encoding: utf-8 -*-
# vim:syntax=ruby


# Readline completion
# -------------------

require 'irb/completion'
require 'irb/ext/save-history'

ARGV.concat ["--readline", "--prompt-mode", "simple"]
IRB.conf[:USE_READLINE] = true

IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"


# Bundler
# -------

require 'rubygems'
require 'bundler/setup'


# Verbosity
# ---------

# `nil`   => `0` => silence
# `false` => `1` => default
# `true`  => `2` => verbose

$VERBOSE = true
$DEBUG = true
