class ApplicationController < ActionController::Base

  def index
    @popular_product = Product.popular[0]
    @local_products = Product.local
    @recent_products = Product.recent
  end
end
