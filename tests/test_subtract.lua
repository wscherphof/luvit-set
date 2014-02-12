require("luvit-test/helper")

local Set = require("../Set")

assert(nil == (Set:new(1)      - Set:new(1))      [1] )
assert(nil == (Set:new({1, 2}) - Set:new({2, 3})) [2] )
