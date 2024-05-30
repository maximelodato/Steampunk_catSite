# app/models/cart.rb
class Cart < ApplicationRecord
  has_many :purchases
  belongs_to :user
  attr_reader :items

  def initialize(session)
    @session = session
    @items = session[:cart] || {}
  end

  def add_product(product_id)
    product_id = product_id.to_s
    items[product_id] ||= 0
    items[product_id] += 1
    update_session
  end

  def remove_product(product_id)
    product_id = product_id.to_s
    if items[product_id]
      items.delete(product_id)
      update_session
    end
  end

  def total_price
    items.sum do |product_id, quantity|
      product = Product.find_by(id: product_id)
      product ? product.price * quantity : 0
    end
  end

  private

  def update_session
    @session[:cart] = items
  end
end
