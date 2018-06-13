class MerchantsController < ApplicationController
  before_action :reset_session, except:[ :index]

  def index
    require_valid_merchant!
  end

  def new
    @merchant = Merchant.new
  end

  def create
    @merchant = Merchant.new(merchant_params)

    if @merchant.save
      session[:merchant_id] = @merchant.id
      flash[:success] =  'You have successfully created an account!'
      redirect_to root_path
    else
      render :new
    end
  end

  def require_valid_merchant!
    if current_merchant.nil?
      flash[:error] = 'You must be logged in to access that page!'
      redirect_to login_path
    end
  end

  def merchant_params
    params.require(:merchant).permit(:name,:email, :password, :password_confirmation)
  end
end
