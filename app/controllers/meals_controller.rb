class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def healthy
    # query the db
    # for --> all meals that's healthy (calories less than 75)
    @healthy_meals = Meal.where('calories <= 75')
  end

  def show
    @meal = Meal.find(params[:id])
  end
end
