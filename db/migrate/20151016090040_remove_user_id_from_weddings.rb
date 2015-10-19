class RemoveUserIdFromWeddings < ActiveRecord::Migration
  def change
  	remove_column :weddings, :user_id, :integer
  end
end
