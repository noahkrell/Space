class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :password_digest, null: false
      t.string :email, null: false
      t.boolean :host, default: true
      t.date :birthday, null: false
      t.string :phone_number

      t.timestamps
    end
  end
end
