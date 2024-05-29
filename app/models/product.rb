class Product < ApplicationRecord
    has_many :order_items
    def image_url
        self[:image_url] || "https://via.placeholder.com/150"
      end
end
