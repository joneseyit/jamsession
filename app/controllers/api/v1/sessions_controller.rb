class Api::V1::SessionsController < ApplicationController
  before_action :find_session, only: [:update]
  def index
    @sessions = Session.all
    render json: @sessions
  end

  def update
    @session.update(session_params)
    if @session.save
      render json: @session, status: :accepted
    else
      render json: { errors: @note.errors.full_messages}, status: :unprocessible_entity
  end

  private

  def session_params
    params.permit(:title, :time, :location, :description)
  end

  def find_session
    @session = Session.find(params[:id])
  end
end
