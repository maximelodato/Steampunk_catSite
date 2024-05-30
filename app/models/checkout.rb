class Checkout < ApplicationRecord
    belongs_to :user
    has_many :cart_items
    has_many :products, through: :cart_items
  
    def total_price
      cart_items.joins(:product).sum('products.price * cart_items.quantity')
    end
  end