class AddUnitToStocks < ActiveRecord::Migration[6.0]
  def change
    add_column :stocks, :unit, :string
  end
end
