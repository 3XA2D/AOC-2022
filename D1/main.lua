t = {}
e = 0

file = io.open("input.in")

for lines in file:lines() do
  if lines ~= '' then
    e = e + tonumber(lines)
  else
    table.insert(t, e)
    e = 0
  end
end

file:close()

table.sort(t)

-- Puzzle 1
print('puzzle 1: '..t[#t])

-- Puzzle 2
print('puzzle 2: '..t[#t]..t[#t-2]..t[#t-1])
