class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.where(@record.user == @user)
      scope.where(user: user)
    end
  end

  def new?
    true
    # record.dress.user != user
  end

  def create?
    true
  end
end
