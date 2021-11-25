class UsersController < ApplicationController
  #Actions executed before other methods in controller
  before_action :read_users
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :read_user_items, only: [:show]
  before_action :authenticate_user!

  #Show method for user profile view
  def show
  end

  #Edit method for user, authorization check
  def edit
    unless @user.id == current_user.id || current_user.admin?
      flash[:alert] = "You are not authorized!"
      redirect_to items_path
    end
  end

  #Update method for user
  def update
  end

  #Destroy method enabling deletion of user, authorization check
  def destroy
    unless @user.id == current_user.id || current_user.admin?
      flash[:alert] = "You are not authorized!"
      redirect_to items_path
    end
  end

  private

  #Sets user via ID to instance variable for use
  def set_user
    id = params[:id]
    @user = User.find(id)
  end

  #Sets all users to instance variable for use
  def read_users
    @users = User.all
  end

  #Sets user items to instance variable for use
  def read_user_items
    @items = @user.items
  end

  # Whitelist parameters for user instansiation
  def user_params
    params.require(:user).permit(:email, :role, :first_name, :last_name)
  end
end