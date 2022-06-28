local tl = require("tl")
local util = require("spec.util")

describe("Playdate custom Lua version compatibility", function()
  it("turns require into import for Playdate Lua dialect", util.gen([[
  	      require "os"

         function hello(n: number): number
            return 9
         end
      ]], [[
import "os"

function hello(n)
   return 9
end]], "playdate", true))
end)
