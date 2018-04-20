class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
    render :show
  end

  def update
    @product= product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(product)
    else
      render :edit
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to products_path
  end
end

private
 def list_params
   params.require(:product).permit(:name, :cost, :country)
 end
