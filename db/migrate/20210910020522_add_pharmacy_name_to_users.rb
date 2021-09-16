class AddPharmacyNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pharmacy_name, :string
  end
end
