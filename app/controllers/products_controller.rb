class ProductsController < ApplicationController
    def index
        @items = Item.all
        per_page = (params[:per_page] || 4).to_i
        @page = (params[:page] || 1).to_i
        @items = Item.offset((@page - 1) * per_page).limit(per_page)
        @total_pages = (Item.count.to_f / per_page).ceil
        @total_items = Item.count
    end

    def show
        @item = Item.find(params[:id])
    end
      
  end