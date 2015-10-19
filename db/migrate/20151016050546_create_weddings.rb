class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.text :bride_name
      t.text :groom_name
      t.text :love_story
      t.integer :number_guests
      t.date :date
      t.text :location
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
