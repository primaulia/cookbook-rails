class CommentsController < ApplicationController
  def new
    # create a blank comment
    @meal = Meal.find(params[:meal_id])
    @new_comment = Comment.new
    @new_comment.meal = @meal
  end

  def create
    # create new instance 
    # setup strong params
    # check if it's valid
      # if yes --> redirect
      # else --> render / show the error message

    @new_comment = Comment.new(comment_params)
    @meal = Meal.find(params[:meal_id])
    @new_comment.meal = @meal

    if @new_comment.save
      redirect_to meal_path(@new_comment.meal)
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
