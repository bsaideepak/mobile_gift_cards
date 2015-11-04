class CreateECards < ActiveRecord::Migration
  def change
    create_table :e_cards do |t|
      t.text :name
      t.integer :value
      t.text :template_info
      t.text :to_email
      t.integer :to_phone
      t.text :from_email
      t.integer :from_phone

      t.timestamps null: false
    end
  end
end
