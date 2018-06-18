class CSessionsController < ApplicationController
def new
end

def create

 @customer = Customer.find_by_email(params[:session][:email])
 if @customer && @customer.authenticate(params[:session][:password])
   session[:customer_id] = @customer.id
   redirect_to '/'
 else
  redirect_to 'customer/login'
 end
end

def destroy
 session[:customer_id] = nil
 redirect_to '/'
  end
end
