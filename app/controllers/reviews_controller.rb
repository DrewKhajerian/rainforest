class ReviewsController < ApplicationController
  before_filter :ensure_logged_in, :only => [:edit, :create, :show, :update, :destroy]
  before_filter :load_product
  
  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = @product.reviews.build(params[:review])
    @review.user_id = current_user.id
    if @review.save
      redirect_to product_path(@product), notice: "Review saved successfully"
    else
      render :action => :show
    end
  end

  def edit
  end

  def destory
    @review = Review.find(params[:id])
    @review.destroy
  end

  private 

  def load_product
    @product = Product.find(params[:product_id])
  end
end
