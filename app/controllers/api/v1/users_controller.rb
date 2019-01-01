class Api::V1::UsersController < ApplicationController
  #use before_action to find the person before doing specific stuff to them
  before_action :find_user, only: [:show, :create, :update, :destroy]
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
  end

  def update
    #does
    @user.update(user_params)
  end

  def destroy
    @user.destroy
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:name, :username, :bio)
  end
end
