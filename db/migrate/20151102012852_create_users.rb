class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username
      t.text :password
      t.integer :phone
      t.text :address
      t.text :email

      t.timestamps null: false
    end
  end
end
