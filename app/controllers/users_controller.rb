class UsersController < ApplicationController
  before_action :read_users
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :read_user_items, only: [:show]
  before_action :authenticate_user!

  def show
  end

  def edit
    authorize @user
  end

  def update
    authorize @user
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

  def read_user_items
    @items = @user.items
  end
end