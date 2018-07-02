class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :current_merchant przeiesc do controllera panelu merchanta, jak juz taki powstanie


  private

  def current_customer
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end
  helper_method :current_customer, :current_merchant

  #def require_user
  #  redirect_to '/login' unless current_user
  #end

  def current_merchant
    if !session[:merchant_id].blank?
      @merchant ||= Merchant.find(session[:merchant_id])
    end
  end

  def require_customer
    redirect_to customer_login_path unless
    current_customer.present?
  end

  def require_merchant
    redirect_to merchant_login_path unless
    current_merchant.present?
end
end
