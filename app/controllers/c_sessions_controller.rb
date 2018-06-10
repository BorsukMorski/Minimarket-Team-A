class CsessionsController < ApplicationController
def new
end

def create

 @customer = Customer.find_by_email(params[:c_session][:email])
 if @customer && @customer.authenticate(params[:c_session][:password])
   c_session[:customer_id] = @customer.id
   redirect_to '/'
 else
  redirect_to 'customer/login'
 end
end

def destroy
 c_session[:customer_id] = nil
 redirect_to '/'
  end
end
