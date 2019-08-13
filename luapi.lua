#!/usr/bin/env luajit

if arg[1] == nil then
   print "luapi <number-of-times>"
   os.exit(0)
elseif arg[1] == "version" then
   print "LuaPi v1.0.0"
else
   local maxk = arg[1]
   local pi = 0
   local digit = 0
   
   for k=0, maxk, 1 do
      digit = math.pow(-1, k) / (2 * k + 1)
      pi = pi + digit
   end
   pi = pi * 4
   print(pi)
end
