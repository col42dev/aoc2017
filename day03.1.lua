
local data = 347991
local size = math.ceil(math.sqrt(data))
local center = math.ceil((size - 1) / 2)
local result = math.max(0, center - 1 + math.abs(center - data % size))

print(result) -- 480 
