def anagram(first, second)
  first_array = Array.new(26, 0)
  second_array = Array.new(26, 0)

  for c in first.chars
    first_array[c.ord - 97] += 1
  end

  for c in second.chars
    second_array[c.ord - 97] += 1
  end

  for i in 0..first_array.length-1
    if first_array[i] != second_array[i]
      return 0
    end
  end

  1
end

first_line = gets.chomp
second_line = gets.chomp
puts anagram(first_line, second_line)