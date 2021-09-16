class Stock < ApplicationRecord
  validates :product_name, :number, :expiration_year, :expiration_month, :lot, :status, :opening_year, :opening_month, :unit, presence:true
  belongs_to :user
end
