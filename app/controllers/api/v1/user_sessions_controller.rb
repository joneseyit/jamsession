class Api::V1::UserSessionsController < ApplicationController

  def index
    @usersessions = UserSession.all
    render json: @usersessions
  end

  def create
    @user_session = UserSession.new(user_session_params)
    if @user_session.save
      render json: user_session
    else
      render json: {errors: @user_session.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    @user_session = UserSession.find(params[:id])
    @user_session.destroy
  end

  private

  def user_session_params
    params.permit(:user_id, :session_id)
  end

end
