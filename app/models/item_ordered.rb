class ItemOrdered < ApplicationRecord
    belongs_to :order
    belongs_to :item

  def total_price
    quantity * product.price
  end
end