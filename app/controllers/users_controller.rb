class UsersController < ApplicationController
  before_filter :redirect_unlogged_users

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @user.update user_params
      redirect_to home_promo_path
    else
      render 'edit', notice: "#{user_params} n'est pas disponible"
    end
  end

  private
    def user_params
      params.require(:user).permit(:id, :name, :email, :password,:password_confirmation, :title, :tags, :desc, :linkedin, :twitter, :github, :online)
    end
end
