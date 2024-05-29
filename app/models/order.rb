class Order < ApplicationRecord
    belongs_to :user
    has_many :item_ordereds

  def total_price
    order_items.sum(&:total_price)
  end
end