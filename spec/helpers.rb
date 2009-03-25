($:.unshift File.expand_path(File.join( File.dirname(__FILE__), '..', 'lib' ))).uniq!
# Require spec here, for things like autotest and rdebug that aren't running
# through the Rakefile.
require 'spec'

($:.unshift File.expand_path(File.join( File.dirname(__FILE__), 'helpers' ))).uniq!
