require "fileio"

local lines = lines_from('./data/day02.txt')

local checksum = {}

for k,v in pairs(lines) do

    local row = {}
    for i in string.gmatch(v, "%S+") do
        row[#row+1] = tonumber(i)        
    end    

    table.sort(row)

    for rowK, rowV in pairs(row) do
        local match = row[rowK]
        for elementK, elementV in pairs(row) do
            if (elementK > rowK) then
                if (elementV % match == 0) then
                    checksum[#checksum+1] = elementV / match
                end
            end
        end    
    end    

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

print(sum) -- 263 


