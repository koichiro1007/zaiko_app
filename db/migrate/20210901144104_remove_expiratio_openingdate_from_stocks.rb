class RemoveExpiratioOpeningdateFromStocks < ActiveRecord::Migration[6.0]
  def change
    remove_column :stocks, :expiration, :integer
    remove_column :stocks, :opening_date, :integer
  end
end
