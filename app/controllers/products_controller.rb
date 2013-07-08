class ProductsController < ApplicationController
  def index
  	@products = Products.all
  end

  def show
  	@products = Product.find(params[:id])
  end

  def new
  	@products = Product.new
  end

  def create
  	@products = Product.find(params[:product])
  	
  	if @product.save
  		redirect_to products_url
  	else
  		render :new
  	end
  end

  def edit
  	@products = Product.find(params[:id])
  end

  def update
  	@products = Product.find(params[:id])

  	if @product.update_attributes(params[:product])
  		redirect_to product_path(@product) #show view
  	else
  		render :edit # else render the edit form
  	end
  end

  def destory
  	@products = Product.find(params[:id])
  	@products.destroy
  end
end
