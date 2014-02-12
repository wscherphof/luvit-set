require("luvit-test/helper")

local Set = require("../Set")

local a, b, c, d = 1, "1", "one", {}
local set = Set:new({a, b, c, d})
assert(set[a], "set[a]")
assert(set[b], "set[b]")
assert(set[c], "set[c]")
assert(set[d], "set[d]")
assert(4 == set:len(), "{a, b, c, d}")

assert(0 == Set:new():len(), "")
assert(0 == Set:new({}):len(), "{}")

assert(1 == Set:new(1):len(), "1")
assert(1 == Set:new({1}):len(), "{1}")
assert(1 == Set:new("1"):len(), "'1'")

assert(2 == Set:new({1, 2}):len(), "{1, 2}")
assert(2 == Set:new({1, 2, 1}):len(), "{1, 2, 1}")
assert(2 == Set:new({"1", "2"}):len(), "{'1', '2'}")
assert(2 == Set:new({"1", "2", "1"}):len(), "{'1', '2', '1'}")

assert(2 == Set:new(Set:new({1, 2})):len(), "Set:new({1, 2})")
assert(2 == Set:new(Set:new({"1", "2"})):len(), "Set:new({'1', '2'})")
