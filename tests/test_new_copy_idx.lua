require("luvit-test/helper")

local Set = require("../Set")

local orig, copy
orig = Set:new({1, 2, 3})
copy = Set:new(orig)
copy[2] = nil
assert(orig[1])
assert(orig[2])
assert(orig[3])
assert(copy[1])
assert(nil == copy[2])
assert(copy[3])
