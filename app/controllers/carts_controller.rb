# app/controllers/carts_controller.rb
class CartsController < ApplicationController
  before_action :initialize_cart

  def show
    @cart_items = @cart.items.map do |product_id, quantity|
      product = Product.find(product_id)
      {
        product: product,
        quantity: quantity,
        total_price: product.price * quantity
      }
    end
    @sub_total = @cart.total_price
    @total = @sub_total + 5.00 # Exemple de frais de livraison
  end

  def add_item
    @cart.add_product(params[:product_id])
    flash[:success] = 'Produit ajouté au panier avec succès.'
    redirect_back(fallback_location: root_path)
  end

  def remove_item
    @cart.remove_product(params[:product_id])
    flash[:success] = 'Produit retiré du panier avec succès.'
    redirect_back(fallback_location: cart_path)
  end

  private

  def initialize_cart
    @cart = Cart.new(session)
  end
end
