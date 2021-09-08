class PagesController < ApplicationController
  def home
    @meals = Meal.all
  end

  def login
    
  end
end
