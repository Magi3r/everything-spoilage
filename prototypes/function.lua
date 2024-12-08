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

-- filter out items that dont exist
function filterTable(table_to_filter, itemgroup)
    local offset = 1
    local explosives = false
    if itemgroup then
      offset = 0
    end
    if itemgroup == "explosives" then
        offset = 1
        itemgroup = nil
        explosives = true
    end
    local keepList = {}
    for i, entry in ipairs(table_to_filter) do
      local filter_from = itemgroup or entry[1]
      local valid = (data.raw[filter_from][entry[1 + offset]] ~= nil)
          and ((data.raw["item"][entry[2 + offset]] ~= nil or explosives))
      valid = valid and not (filter_from == "module" and not settings.startup["everything-spoilage_normal-modules-spoil"].value)
      if valid then
        if settings.startup["everything-spoilage-debug"].value then
          log("add spoiling: " .. entry[1 + offset] .. " --> " .. entry[2 + offset])
        end
        table.insert(keepList, i)
      end
    end
    local new_table = {}
    for _, i in pairs(keepList) do
      table.insert(new_table, table_to_filter[i])
    end
    return new_table
  end