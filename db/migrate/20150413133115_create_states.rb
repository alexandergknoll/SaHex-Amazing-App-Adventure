class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name, presence: true

      t.timestamps
    end
  end
end
