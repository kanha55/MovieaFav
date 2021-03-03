class UsersController < ApplicationController
  before_action :find_user, only: %i[show destroy]
  def index
    @users = User.all
  end

  def show; end

  def destroy
    @user.destroy
    redirect_to admin_path
  end

  def logout; end

  private
  def find_user
    @user = User.find_by(id: params[:id])
  end
end
