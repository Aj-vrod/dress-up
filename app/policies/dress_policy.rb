class DressPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.order(created_at: :desc)
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def mydresses?
    true
  end

  def destroy?
    record.user == user
  end
end
