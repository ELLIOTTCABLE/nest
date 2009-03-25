require File.join File.dirname(__FILE__), 'helpers'

require 'nest'
describe Nest do
  
  describe 'initialization' do
    it 'with non-`Enumerable` objects' do
      lambda do
        Nest.new Object.new, Object.new, Object.new
      end.should_not raise_error
    end
    
    it 'with `Enumerable` objects' do
      lambda do
        Nest.new EnumerableThingy.new, EnumerableThingy.new, EnumerableThingy.new
      end.should_not raise_error
    end
    
    it 'with `Array`s' do
      lambda do
        Nest.new [:a, :b, :c], ['foo', 'bar'], [42, 42, 42]
      end.should_not raise_error
    end
    
    it 'with `Range`s' do
      lambda do
        Nest.new (:a..:c), ('foo'..'bar'), (1..42)
      end.should_not raise_error
    end
    
    it 'with `Hash`s' do
      lambda do
        Nest.new({:a => 1, :b => 2, :c => 3}, {'foo' => /bar/}, {})
      end.should_not raise_error
    end
    
    it 'with a mix of `Enumerable`s and non-`Enumerable`s' do
      lambda do
        Nest.new Object.new, EnumerableThingy.new, ['foo', 'bar'],
          (1..42), {:a => 1, :b => 2, :c => 3}
      end.should_not raise_error
    end
  end
  
end
