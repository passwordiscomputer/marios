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
    @list= List.find(params[:id])
    if @list.update(list_params)
      redirect_to lists_path
    else
      render :edit
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to products_path
  end
end
