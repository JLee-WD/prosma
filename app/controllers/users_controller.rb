class UsersController < ApplicationController
  before_action :read_users
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_user
    id = params[:id]
    @user = User.find(id)
  end

  def read_users
    @users = User.all
  end
end