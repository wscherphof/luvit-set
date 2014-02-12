require("luvit-test/helper")

local Set = require("../Set")

assert(0 == Set:new():add():len())
assert(0 == Set:new():remove():len())
assert(0 == Set:new():remove(1):len())

assert(1 == Set:new():add(1):len())
assert(1 == Set:new(1):add():len())
assert(1 == Set:new(1):add(1):len())
assert(2 == Set:new(1):add(2):len())

assert(0 == Set:new(1):remove(1):len())
assert(1 == Set:new({1, 2}):remove(1):len())
assert(1 == Set:new({1, 2}):remove(2):len())

local t = {1, 2}
assert(1 == Set:new():add(t):len())
assert(2 == Set:new(t):add(1):len())
assert(2 == Set:new(t):add(2):len())
assert(3 == Set:new(t):add(3):len())
assert(3 == Set:new(t):add(t):len())
-- 
assert(0 == Set:new():add(t):remove(t):len())
assert(2 == Set:new(t):remove(t):len())
assert(1 == Set:new(t):remove(1):len())
assert(1 == Set:new(t):remove(2):len())
assert(2 == Set:new(t):remove(3):len())
