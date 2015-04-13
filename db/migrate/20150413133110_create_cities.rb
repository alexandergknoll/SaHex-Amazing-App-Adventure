class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, presence: true
      t.belongs_to :state, presence: true

      t.timestamps
    end
  end
end
