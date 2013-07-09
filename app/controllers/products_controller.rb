class ProductsController < ApplicationController
  def index
  	@products = Product.all

  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product }
    end

    @products_view = true
  end

  def show
  	@product = Product.find(params[:id])

  	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end

    @show_view = true
  end

  def new
  	@product = Product.new

  	respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  def create
  	@product = Product.new(params[:product])
  	
  	respond_to do |format|	
	  	if @product.save
	  		format.html { redirect_to @product, notice: "Product was created" }
	  		format.json { render json: @product, status: :created, locaton: @product}
	  	else
	  		format.html { render action: "new" }
	  		format.json { render json: @product.errors, status: :unprocessable_entity }
	  	end
	  end
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def update
  	@product = Product.find(params[:id])

  	respond_to do |format|
	  	if @product.update_attributes(params[:product])
	  		format.html { redirect_to @product, notice: "Product was updated" }
	  		format.json { head :no_content }
	  	else
	  		format.html { render action: "edit" }
	  		format.json { render json: @product.errors, status: :unprocessable_entity }
	  	end
	  end
  end

  def destory
  	@product = Product.find(params[:id])
  	@product.destroy

  	respond_to do |format|
  		format.hmtl { redirect_to products_url }
  		format.json { head :no_content }
  	end
  end
end
