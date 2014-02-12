require("luvit-test/helper")

local Set = require("../Set")

local t = {1, "one", "", "nil", {}, {1, 2}}
assert( Set:new(t)[ Set:new(t):anelement() ] )
