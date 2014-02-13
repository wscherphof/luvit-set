#luvit-set
Straightforward [Lua](http://www.lua.org/) Set library for [Luvit](http://luvit.io/)

##Install
- Download and install [Node.js](http://nodejs.org/download/). Then you have `npm`
- In the root of your Luvit project, `npm install luvit-set`

##Usage
Start off with
```lua
local Set = require("luvit-set")
```
Then, to create a set (of things you like):
```lua
local ilike = Set:new()
```
to add items to a set:
```lua
ilike:add("apples")
ilike:add("bananas")
```
or, initialise with values on creation:
```lua
local ilike = Set:new({"apples", "bananas"})
```
Let's create another set:
```lua
local ulike = Set:new({"apples", "strawberries"})
```
Then we can:
```lua
local welike     = ilike + ulike -- union:        apples, bananas, strawberries
local webothlike = ilike * ulike -- intersection: apples
local udontlike  = ilike - ulike -- subtraction:  bananas
```
Lastly, some conveniences:
```lua
local somethingilike = ilike:anelement()
ilike:len()  -- 2
for k, _ in pairs(ilike) do
  print(k)
end
print(ilike) -- '{"apples", "bananas"}'
local list = ilike:tolist() -- {"apples", "bananas"}
```

##Tests
`npm test luvit-set`

##License
LGPL+; see the `LICENSE` file
