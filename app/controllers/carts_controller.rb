# app/controllers/carts_controller.rb
class CartsController < ApplicationController
  before_action :initialize_cart

  def show
    @cart_items = @cart.items.map do |product_id, quantity|
      begin
        product = Product.find(product_id)
        {
          product: product,
          quantity: quantity,
          total_price: product.price * quantity
        }
      rescue ActiveRecord::RecordNotFound
        { product: nil, quantity: quantity, error: "Produit introuvable" }
      end
    end
    @sub_total = @cart.total_price
    @total = @sub_total + 0.00 # Exemple de frais de livraison
  end

  def add_item
    @cart.add_product(params[:product_id])
    flash[:success] = 'Produit ajouté au panier avec succès.'
    redirect_back(fallback_location: root_path)
  end

  def remove_item
    product_id = params[:product_id].to_s
    if @cart.items[product_id]
      @cart.remove_product(product_id)
      flash[:success] = 'Produit supprimé du panier avec succès.'
    else
      flash[:error] = 'Produit introuvable dans le panier.'
    end
    redirect_to cart_path
  end

  private

  def initialize_cart
    @cart = Cart.new(session)
  end
end
