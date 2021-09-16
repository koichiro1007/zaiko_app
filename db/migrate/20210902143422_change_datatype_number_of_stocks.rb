class ChangeDatatypeNumberOfStocks < ActiveRecord::Migration[6.0]
  def change
    change_column :stocks, :number, :string
  end
end
