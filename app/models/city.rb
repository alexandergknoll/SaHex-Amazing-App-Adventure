class City < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :state
  has_many :establishments
  has_many :reviews, through: :establishments
  has_many :categories, through: :establishments
  has_many :visitors, through: :reviews, source: :user
end
