#!/usr/bin/env ruby
# Author: MikiasHailu
puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
