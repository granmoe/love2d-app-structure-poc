-- See http://leafo.net/guides/customizing-the-luarocks-tree.html

local version = _VERSION:match("%d+%.%d+")
package.path = 'lua_modules/share/lua/' .. version .. '/?.lua;lua_modules/share/lua/' .. version .. '/?/init.lua;' .. package.path
package.cpath = 'lua_modules/lib/lua/' .. version .. '/?.so;' .. package.cpath

--[[
run:

busted --helper=set_paths

to use these paths in tests
]]--