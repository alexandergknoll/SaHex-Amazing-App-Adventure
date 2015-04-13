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

500.times do
  City.create!(name: Faker::Address.city, state: State.all.sample)
end

10000.times do
  Establishment.create!(name: Faker::Company.name,
                        address: Faker::Address.street_address,
                        hours: "Monday - Friday 9:00 AM - 5:00 PM",
                        phone: Faker::PhoneNumber.cell_phone,
                        city: City.all.sample,
                        category: Category.all.sample)
end
