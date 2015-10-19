class CreateGuestWeddings < ActiveRecord::Migration
  def change
    create_table :guests_weddings do |t|
      t.integer :guest_id
      t.integer :wedding_id
    end
  end
end
