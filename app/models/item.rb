class Item < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 5 }
    validates :image_url, presence: true
    has_many :purchases
    has_many :carts, through: :purchases
    has_many :item_ordereds
    has_many :orders, through: :item_ordereds
  end
  