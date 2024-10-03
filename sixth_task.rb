require "set"

def calculate_distance(i, j, coordinates, max_distance)
  first = coordinates[i]
  second = coordinates[j]
  max_distance >= (first[0] - second[0]).abs + (first[1] - second[1]).abs
end

def bfs(start, finish, cities_amount, coordinates, max_distance)
  visited = Set[start]
  queue = Array[[start, 0]]

  while queue.size > 0
    begin_key, count = queue.shift

    if begin_key == finish
      return count
    end

    for key in 0...cities_amount
      if !visited.include?(key) && calculate_distance(begin_key, key, coordinates, max_distance)
        queue << [key, count + 1]
        visited.add(key)
      end
    end
  end

  -1
end

cities_amount = gets.to_i
coordinates = Array.new(cities_amount) {gets.chomp.split(' ').map(&:to_i)}
max_distance = gets.to_i
road = gets.chomp.split(' ').map(&:to_i)
start = road[0] - 1
finish = road[1] - 1
return 0 if start == finish


puts bfs(start, finish, cities_amount, coordinates, max_distance)