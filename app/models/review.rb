class Review < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :establishment
  has_one :category, through: :establishment
end
