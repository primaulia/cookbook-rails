
<!-- TODO -->
5. Setup the routes ✅
1. Model the pets and salons
2. Setup the migration
3. Seed the DB
4. Rails c to sandbox the Model
6. Setup the controller + view



As a user I can see one pet salon (that has a lot of pets) ==> get /salons
As a user I can add new pet in the salon ==> 
  - form to create pet --> the form will be in the salon page
  - post '/salons/:salon_id/pets'
As a user I can delete a pet
  - delete '/pets/:id'
As a user I can categorize my pet into different category
  - should happened inside the creation form --> the form will be in the salon page