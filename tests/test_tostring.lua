require("luvit-test/helper")

local Set = require("../Set")

assert(Set.mt.__tostring(Set:new({1, 2, 3})) == "{1, 2, 3}")
assert(9  == #Set.mt.__tostring(Set:new({"a", "b", "c"})), "'{a, b, c}'           (or in a different permutation)")
assert(19 == #Set.mt.__tostring(Set:new({ {} })),          "'{table: 0x05117b58}' (but a different same-length key)")
