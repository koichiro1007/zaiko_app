class RemovePhoneNumberFromStocks < ActiveRecord::Migration[6.0]
  def change
    remove_column :stocks, :phone_number, :integer
  end
end
