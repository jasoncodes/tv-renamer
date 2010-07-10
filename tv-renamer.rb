#!/usr/bin/env ruby

$:.unshift File.dirname(__FILE__)

require 'lib/tvdb/tvdb'
require 'lib/tvparser'
require 'lib/tvrenamer'

VALID_VIDEO_TYPES = %w{avi mkv m2v mpg mpeg mov ogm wmv mp4 srt}
QUALITIES = %w{HDTV 720P 1080i Bluray}

renamer = Renamer.new(ARGV.shift || ".")
# renamer.recursive = false
renamer.start