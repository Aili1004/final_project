class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.text :full_name
      t.text :relationship
      t.text :greeting
      t.boolean :is_attending

      t.timestamps null: false
    end
  end
end
