
local data = 347991



local x, y, matrix
x = 0
y = 0

matrix = {}
matrix[tostring(x) .. ',' .. tostring(y)] = 1

local getValue = function (lmatrix, posX, posY) 
    local sum = 0
    for x = posX - 1,posX + 1 do
        for y = posY - 1,posY + 1 do
            if lmatrix[tostring(x)..','..tostring(y)] then
                sum = sum + lmatrix[tostring(x)..','..tostring(y)]
            end
        end
    end

    return sum
end


while true do
    local val = getValue(matrix, x, y)
    if val >= data then
        print(val)
        break
    end
    matrix[tostring(x)..','..tostring(y)] = val

    if ((x ~= y) or (x >= 0)) and (math.abs(x) <= math.abs(y)) then
        if y >= 0 then
            x = x + 1 
        else
            x = x - 1 
        end
    else 
        if x >= 0  then
            y = y - 1 
        else
            y = y + 1
        end
    end
end

-- 349975


