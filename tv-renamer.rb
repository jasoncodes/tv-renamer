#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

$: << File.dirname(__FILE__) + '/lib'

require 'tvdb'
require 'tvparser'
require 'tvrenamer'

VALID_VIDEO_TYPES = %w{avi mkv m2v mpg mpeg mov ogm wmv mp4 srt}
QUALITIES = %w{HDTV 720P 1080i Bluray}

renamer = Renamer.new(ARGV.shift || ".")
# renamer.recursive = false
renamer.start