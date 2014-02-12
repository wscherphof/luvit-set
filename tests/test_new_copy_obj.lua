require("luvit-test/helper")

local Set = require("../Set")

local orig, copy
orig = Set:new({"a", "b", "c"})
copy = Set:new(orig)
copy["b"] = nil
assert(orig["a"])
assert(orig["b"])
assert(orig["c"])
assert(copy["a"])
assert(nil == copy["b"])
assert(copy["c"])
