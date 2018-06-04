class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_merchant

  def current_merchant
    if !session[:merchant_id].blank?
      @merchant ||= Merchant.find(session[:merchant_id])
    end
  end
end
