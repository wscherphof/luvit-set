require("luvit-test/helper")

local Set = require("../Set")

assert( (Set:new("a") + Set:new("b")).a )
assert( (Set:new("a") + Set:new("b")).b )
assert( (Set:new(   ) + Set:new("b")).b )
assert( (Set:new("a") + Set:new(   )).a )

assert( (Set:new("a") + "b").a )
assert( (Set:new("a") + "b").b )
assert( (Set:new(   ) + "b").b )
assert( (Set:new("a") + nil).a )

assert( ("b" + Set:new("a")).a )
assert( ("b" + Set:new("a")).b )
assert( ("b" + Set:new(   )).b )
assert( (nil + Set:new("a")).a )

assert( ("b" + Set:new() + "a").a )
assert( ("b" + Set:new() + "a").b )
assert( ("b" + Set:new() + nil).b )
assert( (nil + Set:new() + "a").a )

assert( (Set:new() + "b" + "a").a )
assert( (Set:new() + "b" + "a").b )
assert( (Set:new() + "b" + nil).b )
assert( (Set:new() + nil + "a").a )

throws(function()
  assert( ("b" + "a" + Set:new()).a )
end, "attempt to perform arithmetic on a string value")
