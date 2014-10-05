class AddUserIdToStatuses < ActiveRecord::Migration
  def change
  	#add a column on statues table called user id as an int
  	add_column :statuses, :user_id, :integer
  	#add index t find userid
  	add_index :statuses, :user_id
  	#remove name field from stasues table
  	remove_column :statuses, :name 
  end
end
