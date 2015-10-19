class AddNumberPeopleToGuests < ActiveRecord::Migration
  def change
  	add_column :guests, :number_people, :integer
  end
end
