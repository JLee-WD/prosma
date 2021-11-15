# frozen_string_literal: true

class ItemPolicy < ApplicationPolicy

  # def new?
  #   user.admin?
  # end

  def edit?
    user == record.user
  end

  def update?
    user == record.user
  end

end
