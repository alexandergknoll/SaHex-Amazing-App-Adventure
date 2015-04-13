class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.integer :stars, presence: true
      t.belongs_to :user, presence: true
      t.belongs_to :establishment, presence: true

      t.timestamps
    end
  end
end
