##
# A `Nest` is what one might consider a "meta-`Enumerable`". That is, it is an
# `Enumerable` that is specifically built to be aware of the enumerability of
# its children elements.
# 
# A `Nest` is perfectly capable of containing non-`Enumerable` elements;
# they'll be treated normally (specifially, they'll be treated as single-
# element `Enumerable`s.)
# 
# `Nest`s may be enumerated over in several ways; see `#each_child`,
# `#deep_each` (which is the default method, and is aliased to `#each`),
# `#each_combination`, and `#each_set`.
class Nest
  
  # ===============
  # = Enumerators =
  # ===============
  # These methods variously enumerate over `Nest` objects. `Nest` objects are
  # rather complex, and a single `#each` method simply doesn't "cut it".
  # Hence, we provide (currently) four different ways to enumerate the
  # contents of a `Nest`; you can take any one and stack it with other
  # instance methods from the `Enumerable` module or `Enumerator` class to
  # manipulate `Nest`s however you like.
  # 
  # TODO: Figure out a way to get this documentation block into YARD-generated documentation!
  
  ##
  # This method enumerates over every child of every child of this `Nest`. It
  # will call `#deep_each` if defined, otherwise `#each`.
  # 
  # This method, in many cases, can supercede the use of `#flatten` or similar
  # methods, making such situations less dangerous. `Array`s within child and
  # similar will not be damaged or affected by the use of `#deep_each` as they
  # would by the use of `#flatten`, making this a safer option.
  # 
  # As with other `Nest` methods, this will treat any non-`Enumerable` child
  # as a single-element `Enumerable`.
  # 
  # As with other `Nest` enumerator methods, if no block is given, this method
  # returns an `Enumerator` object, suitable for further enumeration. (see the
  # instance methods on `Enumerable`)
  # 
  # `#each` is aliased to this method; directly utilizing a `Nest` as an
  # `Enumerable` will utilize `#deep_each` instead of the other enumerator
  # methods.
  def deep_each
    
  end
  alias_method :each, :deep_each # TODO: Make the user capable of selecting which enumerator to use by "default" (i.e. which one to alias to `#each`)
  
  ##
  # This method enumerates over every direct child of this `Nest`. It is
  # equivalent to treating this `Nest` as a normal `Array` of `Enumerable`s.
  # 
  # As with other `Nest` methods, this will treat any non-`Enumerable` child
  # as a single-element `Enumerable`.
  # 
  # As with other `Nest` enumerator methods, if no block is given, this method
  # returns an `Enumerator` object, suitable for further enumeration. (see the
  # instance methods on `Enumerable`)
  def each_child
    
  end
  
  ##
  # This method enumerates over every possible combination of every child of
  # every child of this `Nest`.
  # 
  # For obvious reasons, this method can be rather intensive; make sure you
  # know what you're doing before using it on `Nest`s with larger enumerable
  # children!
  # 
  # As with other `Nest` methods, this will treat any non-`Enumerable` child
  # as a single-element `Enumerable`.
  # 
  # As with other `Nest` enumerator methods, if no block is given, this method
  # returns an `Enumerator` object, suitable for further enumeration. (see the
  # instance methods on `Enumerable`)
  def each_combination
    
  end
  
  ##
  # This method enumerates over every possible indexed set of every child of
  # every child of this `Nest`.
  # 
  # If intervening `Enumerable`s are "too short", they will be padded with
  # nils for the purposes of this method. That is, every child will be nil-
  # padded to the length of the longest `Enumerable` child.
  # 
  # As with other `Nest` methods, this will treat any non-`Enumerable` child
  # as a single-element `Enumerable`.
  # 
  # As with other `Nest` enumerator methods, if no block is given, this method
  # returns an `Enumerator` object, suitable for further enumeration. (see the
  # instance methods on `Enumerable`)
  def each_set
    
  end
  
end
