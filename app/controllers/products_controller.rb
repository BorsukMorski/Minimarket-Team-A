class ProductsController < ApplicationController
before_action :require_customer, only: [:show]
before_action :require_merchant, only: [:show, :edit, :create, :update, :destroy, :new]
  def index
    if  current_merchant.present?
      #alternatywne rozw: @products = Product.where(merchant_id: @merchant.id)
      @products = @merchant.products
    elsif current_customer.present?
      @products = Product.all
    else
      redirect_to root_path
    end
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
      redirect_to products_path
    else
      render :new
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
    params.require(:product).permit(:author, :title, :isbn,:pages,:merchant_id)
  end
end
