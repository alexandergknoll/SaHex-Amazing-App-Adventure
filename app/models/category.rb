class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :establishments
  has_many :reviews, through: :establishments

end
