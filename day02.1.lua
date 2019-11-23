require "fileio"

local lines = lines_from('./data/day02.txt')


local checksum  = {}

for k,v in pairs(lines) do

    local a = {}
    for i in string.gmatch(v, "%S+") do
        --table.insert(a, i)
        a[#a+1] = tonumber(i)
        --print(i)
        
     end    

     checksum[#checksum+1] = math.max(unpack(a)) - math.min(unpack(a))
end

table.reduce = function (list, fn) 
    local acc
    for k, v in ipairs(list) do
        if 1 == k then
            acc = v
        else
            acc = fn(acc, v)
        end 
    end 
    return acc 
end

local sum = table.reduce(
    checksum,
    function (a, b)
        return a + b
    end
)

print(sum) -- 37923 