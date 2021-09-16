class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :product_name #商品名
      t.string :general_name #一般名
      t.string :manufacturer #メーカー名
      t.float :number #数量
      t.integer :expiration #期限
      t.string :lot #ロット
      t.string :status #状態
      t.integer :opening_date #バラ錠開封日
      t.string :notes #備考欄

      t.timestamps
    end
  end
end
