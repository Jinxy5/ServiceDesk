class CustomersController < ApplicationController
  def index

  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      flash[:notice] = "Customer has been created!"
      redirect_to @customer
    else
      flash[:alert] = "Customer not created."
      render action: 'new'
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  private
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :phone_number,
                                       :address, :zip_code)
    end

end

