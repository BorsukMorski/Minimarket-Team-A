class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :current_merchant przeiesc do controllera panelu merchanta, jak juz taki powstanie


  private

  def current_customer
    @current_customer ||= Customer.find(c_session[:customer_id]) if c_session[:customer_id]
  end
  helper_method :current_customer

  #def require_user
  #  redirect_to '/login' unless current_user
  #end

  def current_merchant
    if !m_session[:merchant_id].blank?
      @merchant ||= Merchant.find(m_session[:merchant_id])
    end
  end
end
