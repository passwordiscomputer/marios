class ProductsController < ApplicationController
  def index
    @products = Product.all.paginate(:page => params[:page], :per_page => 20)
    render :index
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
    render :show
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:alert] = "#{@product.name} successfully added!"
      redirect_to  products_path
    else
      flash[:alert] = "I failed to save this Product"
      render :new
    end
  end


  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:alert] = "#{@product.name} successfully updated!"
      redirect_to product_path(@product)
    else
      "#{@product.name} was unable to be updated!"
      render :edit
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to products_path
  end
end

private
 def product_params
   params.require(:product).permit(:name, :cost, :country)
 end
