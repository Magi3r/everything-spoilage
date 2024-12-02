seed = 0

function randomValue(x, y)
    local a = 1664525
    local c = 1013904223
    local m = 2^32

    seed = (a * seed + c) % m

    local normalized = seed / m

    if x == nil and y == nil then
        return normalized -- Return [0, 1)
    elseif y == nil then
        return math.floor(1 + normalized * (x - 1)) -- Map to [1, x)
    else
        return math.floor(x + normalized * (y - x)) -- Map to [x, y)
    end
end

function set_seed(new_seed)
    seed = new_seed
end


function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

function split(input, delimiter)
    local result = {}
    delimiter = delimiter or "%s" -- Default delimiter is whitespace if not provided
    for match in (input .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, match)
    end
    return result
end

function starts_with(input, prefix)
    return input:find("^" .. prefix) ~= nil
end