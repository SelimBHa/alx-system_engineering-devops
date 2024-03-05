#!/usr/bin/env ruby
puts ARGV[0].scan(/from:+\K(\d{11})/).join