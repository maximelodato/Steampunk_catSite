
class Cart
  def initialize(session)
    @session = session
    @session[:cart] ||= {}
  end

  def add_product(product_id)
    @session[:cart][product_id.to_s] ||= 0
    @session[:cart][product_id.to_s] += 1
  end

  def remove_product(product_id)
    @session[:cart].delete(product_id.to_s)
  end

  def items
    @session[:cart]
  end

  def total
    @session[:cart].values.sum
  end

  def total_price
    items.sum do |product_id, quantity|
      product = Product.find(product_id)
      product.price * quantity
    end
  end
end
