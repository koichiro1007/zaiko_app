class AddUserNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :postal_code, :integer
    add_column :users, :prefecture_code, :string
    add_column :users, :city, :string
  end
end
