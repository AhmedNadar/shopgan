class AddUserDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :username, 	:string, null: false, default: ""
  	add_column :users, :first_name, :string, null: false, default: ""
  	add_column :users, :last_name, 	:string, null: false, default: ""

  	add_index :users, :username, unique: true
  	add_index :users, :first_name, unique: true
  	add_index :users, :last_name, unique: true
  end
end