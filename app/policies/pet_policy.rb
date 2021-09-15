class PetPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @scope.where(user: @user)
    end
  end

  def show?    
    true
  end

  def edit?
    update?
  end

  def update?
    # the pet must belong to the current_user
    @record.user == @user
  end
end