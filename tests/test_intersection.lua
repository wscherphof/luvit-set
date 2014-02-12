require("luvit-test/helper")

local Set = require("../Set")

assert(       (Set:new(1)         * Set:new(1))         [1] )
assert(       (Set:new({1, 2, 3}) * Set:new({2, 3, 4})) [2] )
assert(       (Set:new({1, 2, 3}) * Set:new({2, 3, 4})) [3] )
assert(nil == (Set:new({1, 2, 3}) * Set:new({2, 3, 4})) [1] )
assert(nil == (Set:new({1, 2, 3}) * Set:new({2, 3, 4})) [4] )
