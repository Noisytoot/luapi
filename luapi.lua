#!/usr/bin/env luajit

local maxk = arg[1]
local pi = 0
local digit = 0

for k=0, maxk, 1 do
   digit = math.pow(-1, k) / (2 * k + 1)
   pi = pi + digit
end
pi = pi * 4
print(pi)
