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

  def edit
    # find the existing customer
    @edited_customer = Customer.find(params[:id])
    # pass it to the view
  end

  def update
    edited_customer = Customer.find(params[:id])
    edited_customer.update(customer_params)

    if edited_customer
      redirect_to customers_path
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
    deleted_customer = Customer.find(params[:id])
    deleted_customer.destroy

    redirect_to customers_path
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
