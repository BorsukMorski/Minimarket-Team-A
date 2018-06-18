class MSessionsController < ApplicationController
  def new
  end

  def create

    reset_session
    @merchant = Merchant.find_by(email: session_params[:email])

    if @merchant && @merchant.authenticate(session_params[:password])
      session[:merchant_id] = @merchant.id
      flash[:success] = 'Welcome back!'
      redirect_to '/'
    else
      flash[:error] = 'Invalid email/password combination'
      redirect_to 'merchant/login'
    end
  end

  def destroy
    reset_session
  end

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
