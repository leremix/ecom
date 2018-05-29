class BackendController < ApplicationController
  before_action :authenticate_admin!
  layout "admin/backend"

  def index
    @userCount = User.count
    @productCount = Product.count
    @uploadCount = Upload.count
  end

end
