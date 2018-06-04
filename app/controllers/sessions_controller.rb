class SessionsController < ApplicationController
  skip_before_action :require_valid_merchant!, except: [:destroy]

  def new
  end

  def create
    reset_session
    @merchant = Merchant.find_by(email: session_params[:email])

    if @merchant && @merchant.authenticate(session_params[:password])
      session[:merchant_id] = @merchant.id
      flash[:success] = 'Welcome back!'
      redirect_to root_path
    else
      flash[:error] = 'Invalid email/password combination'
      redirect_to login_path
    end
  end

  def destroy
    reset_session
    end
  end
