class AddUserIdToBoat < ActiveRecord::Migration[6.0]
  def change
    add_column :boats, :user_id, :integer
      
    add_foreign_key "boats", "users"
  end
end
