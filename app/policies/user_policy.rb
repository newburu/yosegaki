class UserPolicy < ApplicationPolicy
  def index?
    user.try(:admin?)
  end

  def show?
    record == user || user.try(:admin?)
  end

  def create?
    user.present?
  end

  def new?
    create?
  end

  def update?
    record == user || user.try(:admin?)
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end
  end

end
