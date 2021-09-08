class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    # a blank instance of a customer
    @new_customer = Customer.new
    # pass something to the view
  end

  def create
    new_customer = Customer.new(customer_params)

    if new_customer.save
      redirect_to root_path
    else
      
    end

    # raise

    # extract the data out of params
    # create new instance of customer
    # save it
    # redirected to another route
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address)
  end



end

# {
#   "authenticity_token"=>"wPQQpqjDSQs3u5Nk5Ab2kZgwqECaNTc75Lz3b4k/TMJsoW46qoKFqGZWVTTj8Vx0uga/nRJwgILL8/OKRJl+5g==", 
#   "customer"=>{"name"=>"Guido", "address"=>"Bali"}, 
#   "commit"=>"Create Customer"
# }
