class MsessionsController < ApplicationController
  def new
  end

  def create

    reset_m_session
    @merchant = Merchant.find_by(email: m_session_params[:email])

    if @merchant && @merchant.authenticate(m_session_params[:password])
      m_session[:merchant_id] = @merchant.id
      flash[:success] = 'Welcome back!'
      redirect_to '/'
    else
      flash[:error] = 'Invalid email/password combination'
      redirect_to 'merchant/login'
    end
  end

  def destroy
    reset_m_session
  end

  def m_session_params
    params.require(:m_session).permit(:email, :password)
  end
end
