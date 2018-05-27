class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
	  @customer = Customer.new(customer_params)
	  if @customer.save
	    session[:customer_id] = @Customer.id
	    redirect_to '/'
	  else
	    redirect_to '/signup'
	  end
	end

  private
	  def customer_params
	    params.require(:customer).permit(:name, :email, :password)
	  end
end
