states_path = File.expand_path('../seeds/states.txt', __FILE__)
states_file = File.open(states_path, "r")
states_file.each_line do |line|
  State.create!(name: line.chomp)
end

categories_path = File.expand_path('../seeds/categories.txt', __FILE__)
categories_file = File.open(categories_path, "r")
categories_file.each_line do |line|
  Category.create!(name: line.chomp)
end

# p State.all.first(10)
# cities_file

# categories_path = File.open(, "r")
