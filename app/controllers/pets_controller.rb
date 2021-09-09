class PetsController < ApplicationController
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

  private

  def pet_params
    params.require(:pet).permit(:name)
  end
end
