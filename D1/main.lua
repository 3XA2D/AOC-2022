local sums = {}
local sum = 0

for line in io.lines('input.in') do
 if line ~= '' then
  sum = sum + tonumber(line)
  else
    table.insert(sums, sum)
    sum = 0
 end
end

table.sort(sums)

-- Puzzle 1
print('puzzle 1 = '..sums[#sums])

-- Puzzle 1
print('puzzle 2 = '..sums[#sums] + sums[#sums-2] + sums[#sums-1])
