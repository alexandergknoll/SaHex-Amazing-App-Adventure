class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :reviews
  has_many :reviewed_establishments, through: :reviews, source: :establishment
  has_many :visited_cities, through: :reviewed_establishments, source: :city

end
