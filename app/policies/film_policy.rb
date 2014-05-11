class FilmPolicy < ApplicationPolicy
  def create?
    user.admin?
  end

  def index?
    create?
  end

  def update?
    user.admin?
  end
end