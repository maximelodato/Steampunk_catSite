class CartController < ApplicationController
  
  def show
    @cart = session[:cart] || {}
    @sub_total = 0
    @total = 0

    # Calculer le sous-total et le total seulement si le panier n'est pas vide
    unless @cart.empty?
      @cart.each do |product_id, details|
        @sub_total += details[:quantity] * details[:price]
      end
      @total = @sub_total + 5  # Supposons que les frais de livraison sont de $5
    end
  end


  def add_to_cart
    product_id = params[:product_id]
    
    # Initialisez le panier dans la session s'il n'existe pas déjà
    session[:cart] ||= {}

    # Ajoutez le produit au panier en utilisant l'ID du produit comme clé et en incrémentant la quantité si le produit est déjà présent dans le panier
    session[:cart][product_id] ||= 0
    session[:cart][product_id] += 1

    flash[:success] = 'Produit ajouté au panier avec succès.'
    redirect_back(fallback_location: root_path)
  end
end