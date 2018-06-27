class ProductsController < ApplicationController
before_action :require_customer, only: [:show]
before_action :require_merchant, only: [:show, :edit, :create, :update, :destroy]
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      session[:product_id] = @product.id
      redirect_to products_path
    else
      redirect_to product_new_path
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render "edytuj"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:author, :title, :isbn)
  end
end
