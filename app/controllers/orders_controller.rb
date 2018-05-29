class OrdersController < ActionController::Base

  def show
  end

  def create
    @order = Order.create
    current_user.orders << @order
    @order.products << current_user.cart.products
    @order.save
	end
end
