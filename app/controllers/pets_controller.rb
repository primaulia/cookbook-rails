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
    # UPDATE: by permitting category_ids to accept array values, you can simplify the creation of pets AND pet_categories 
    params.require(:pet).permit(:name, category_ids:[])
  end
end
