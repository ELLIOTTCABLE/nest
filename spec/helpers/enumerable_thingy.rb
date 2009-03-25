##
# This is simply a dummy class that includes Enumerable for testing purposes.
class EnumerableThingy
  include Enumerable
  
  attr_accessor :objects
  
  ##
  # Creates a new `EnumerableThingy` with a random assortment of `Object`s.
  def initialize
    @objects = Array.new
    Kernel::rand(25).times { @objects << Object.new }
  end
  
  def each &block
    objects.each &block
  end
  
end
