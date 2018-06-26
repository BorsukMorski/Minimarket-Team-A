class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  def create
	  @product = Product.new(product_params)
	  if @product.save
	    session[:product_id] = @product.id
	    redirect_to '/products'
	  else
	    redirect_to 'product/new'
	  end
	end

  private
	  def product_params
	    params.require(:product).permit(:author, :title, :isbn)
	  end
end
