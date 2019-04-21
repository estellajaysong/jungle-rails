class ReviewsController < ApplicationController

  def create
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @product = Product.find params[:product_id]
    @review = @product.reviews.new(review_params)
    @review.user_id = @current_user.id
    @review.product_id = @product.id
     
    if @review.save
      redirect_to @product, notice: 'Review was successfully created.' 
    end

  end

  def destroy
    review = Review.find_by(id:params[:id])
    review.destroy
    @product = Product.find params[:product_id]
    redirect_to @product
  end

  def review_params
    params.require(:review).permit(:rating, :description)
  end

end
