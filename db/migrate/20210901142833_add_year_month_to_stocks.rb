class AddYearMonthToStocks < ActiveRecord::Migration[6.0]
  def change
    add_column :stocks, :expiration_year, :integer
    add_column :stocks, :expiration_month, :integer
    add_column :stocks, :opening_year, :integer
    add_column :stocks, :opening_month, :integer
  end
end
