treasures = gets.chomp
rocks = gets.chomp
result = 0

array_treasures = []
for i in 0..treasures.length-1
  array_treasures.push(treasures[i])
end

for i in 0..rocks.length-1
  if array_treasures.include?(rocks[i])
    result += 1
  end
end

result
