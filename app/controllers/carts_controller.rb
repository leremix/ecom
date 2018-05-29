require 'pry'
class CartsController < ActionController::Base
  before_action :set_cart, only: [:show, :add_to_cart, :remove_from_cart]

  layout "application"


  def show
    @products = @cart.products
    @p = @cart.cart_products
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if @cart.cart_products.where(product_id: @product.id).exists?
      p = @cart.cart_products.where(product_id: @product.id).first
      p.quantity += 1
      p.save
    else
    @cart.cart_products.create(attributes = {
      product_id: @product.id
    })
    end
    flash[:success] = "Product was successfully added to cart!"
    redirect_back fallback_location: root_path
  end

  def remove_from_cart
    @cart_product = CartProduct.find(params[:id])
    if @cart_product.quantity == 1
     @cart_product.destroy
     flash[:success] = "Product was successfully removed from cart!"
    else
      @cart_product.quantity -= 1
      @cart_product.save
      flash[:success] = "Product was successfully removed from cart!"
    end
    redirect_back fallback_location: root_path
  end

  private

  def set_cart
    @cart = current_user.cart
  end


end
