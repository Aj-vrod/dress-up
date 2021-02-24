class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(@record.user == @user)
    end
  end

  def new?
    create?
  end

  def create?
    true
  end
end
