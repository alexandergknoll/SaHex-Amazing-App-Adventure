class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, presence: true

      t.timestamps
    end
  end
end
