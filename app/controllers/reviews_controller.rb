class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:alert] = "Review successfully added!"
      redirect_to  product_path(@product)
    else
      flash[:alert] = "Review could not be added :("
      render :new
    end
  end


  private
   def review_params
     params.require(:review).permit(:rating, :author, :content_body)
   end
end
