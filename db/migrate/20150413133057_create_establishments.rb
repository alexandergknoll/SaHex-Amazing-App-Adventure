class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name, presence: true
      t.string :address
      t.string :hours
      t.string :phone
      t.belongs_to :city, presence: true
      t.belongs_to :category, presence: true

      t.timestamps
    end
  end
end
