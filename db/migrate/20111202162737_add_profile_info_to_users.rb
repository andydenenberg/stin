class AddProfileInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first, :string
    add_column :users, :last, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :facebook, :string
    add_column :users, :comments, :text
  end
end
