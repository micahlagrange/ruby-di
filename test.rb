#!/usr/bin/env ruby
# Script to load the dependencies and output to stdout

Dir['classes/*.rb'].each {|f| require_relative f}


def camelize(str)
  str.split('-').map {|c| c.capitalize}.join
end

def get_instance(cl)
  begin
    Object.const_get(cl).new
  rescue NameError
    Object.const_get('BaseExample').new
  end
end

# Code that uses the newly imported classes
cl = ARGV.first
cl = '' if cl.nil?
puts get_instance(camelize(cl)).out
