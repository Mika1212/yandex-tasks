numbers_amount = gets.to_i
previous = nil

for i in 0..numbers_amount - 1
  number = gets.to_i
  if number != previous
    previous = number
    puts number
  end
end
