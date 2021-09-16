class AddPhonenumberToStocks < ActiveRecord::Migration[6.0]
  def change
    add_column :stocks, :phone_number, :integer
  end
end
