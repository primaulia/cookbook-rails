class PetsController < ApplicationController
  def index
    # get all pets that's belong to the current_user
    # miguel ==> current_user

    @pets = policy_scope(Pet)
  end
  
  def create
    # raise

    # create pet instance
    # associate it with the salon

    new_pet = Pet.new(pet_params)
    new_pet.salon = Salon.find(params[:salon_id])

    if new_pet.save
      redirect_to new_pet.salon
    else
      # 
    end    
  end

  def show
    @pet = Pet.find(params[:id])
    @other_pets = Pet.where.not(user: current_user)
    # if the current_user is the pet owner ==> go ahead
    authorize @pet
  end

  def edit
    @pet = Pet.find(params[:id])
    authorize @pet
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.user = current_user
    authorize @pet
    if @pet.update(pet_params)
      redirect_to @pet
    end
  end

  private

  def pet_params
    # UPDATE: by permitting category_ids to accept array values, you can simplify the creation of pets AND pet_categories 
    params.require(:pet).permit(:name, :avatar, category_ids:[])
  end
end
