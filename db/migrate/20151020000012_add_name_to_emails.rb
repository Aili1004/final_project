class AddNameToEmails < ActiveRecord::Migration
  def change
  	add_column :emails, :name, :text
  end
end
