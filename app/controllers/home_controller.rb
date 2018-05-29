class HomeController < ApplicationController
  def index
    @products = Product.take(6)
  end
end
