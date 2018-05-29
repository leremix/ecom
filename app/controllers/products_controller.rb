class ProductsController < ActionController::Base
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  layout "application"

  def index
  @products = Product.all
  #@order_item = current_order.order_items.new
  end

  def show
  @product = Product.find(params[:id])
  end

  def new
  @product = Product.new
  end

  def edit
  @product = Product.find(params[:id])
  end

  def create
  @product = Product.new(product_params)
    if @product.save
    redirect_to @product
	else
	render 'New'
    end
  end

  def update
  	if @product.update(product_params)
  	redirect_to product_path(@product)
  	else
  	render 'Edit'
    end
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  	redirect_to root_path
  end

  private

  def set_product
  @product = Product.find(params[:id])
  end

  def product_params
  	params.require(:product).permit(:user_id, :product_id)
  end

end
