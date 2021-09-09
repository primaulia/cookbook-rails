class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    # a blank instance of a customer
    @new_customer = Customer.new
    # pass something to the view
  end

  def edit
  end

  def update
    # normal
    if @customer.update(customer_params)
      redirect_to customers_path
    else
      render :edit
    end
  end

  def create
    new_customer = Customer.new(customer_params)

    if new_customer.save
      redirect_to root_path
    else
      # where will this go?
    end

    # raise

    # extract the data out of params
    # create new instance of customer
    # save it
    # redirected to another route
  end

  def destroy
    @customer.destroy
    redirect_to customers_path
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :address)
  end
end

# {
#   "authenticity_token"=>"wPQQpqjDSQs3u5Nk5Ab2kZgwqECaNTc75Lz3b4k/TMJsoW46qoKFqGZWVTTj8Vx0uga/nRJwgILL8/OKRJl+5g==", 
#   "customer"=>{"name"=>"Guido", "address"=>"Bali"}, 
#   "commit"=>"Create Customer"
# }
