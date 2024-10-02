numbers_amount = gets.to_i
result = 0
curr = 0

for i in 0..numbers_amount
  number = gets.to_i
  if number == 1
    curr += 1
    result = [result, curr].max
  else
    curr = 0
  end
end

puts result