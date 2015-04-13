class Establishment < ActiveRecord::Base
  # Remember to create a migration!
  has_many :reviews
  belongs_to :city
  has_many :patrons, through: :reviews, source: :user
  has_one :state, through: :city
end
