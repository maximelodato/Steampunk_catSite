class OrdersController < ApplicationController
    def create
      @order = current_order
      @order.update(status: "placed")
      session[:order_id] = nil
      redirect_to root_path, notice: "Order placed successfully"
    end
  end
  