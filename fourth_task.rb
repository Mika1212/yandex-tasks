def find_new_construct_way(str, left_num, link_to_element, max_num)
  if link_to_element == max_num * 2
    puts str
    return
  end

  if link_to_element + left_num < max_num * 2

    find_new_construct_way(str + "(", left_num + 1, link_to_element + 1, max_num)
  end

  if left_num > 0
    find_new_construct_way(str + ")", left_num - 1, link_to_element + 1, max_num)
  end
end

numbers_amount = gets.to_i
array = "("
find_new_construct_way(array, 1, 1, numbers_amount)
