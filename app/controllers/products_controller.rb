class ProductsController < ApplicationController
    def index
      @items = Item.all
      par_page = (params[:per_page] || 4).to_i
      @page = (params[:page] || 1).to_i
      @items = Item.offset((@page - 1) * par_page).limit(par_page)
      @total_pages = (Item.count.to_f / par_page).ceil
      @total_items = Item.count
    end
  
    def show
      @item = Item.find(params[:id])  # Utilisez Item au lieu de Product
    end
  end
  