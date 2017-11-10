class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.text :rules, null: false
      t.string :location, null: false
      t.string :city, null: false
      t.string :state
      t.string :country, null: false
      t.integer :owner_id, null: false

      t.timestamps
    end
  end
end
