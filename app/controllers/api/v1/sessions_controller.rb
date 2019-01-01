class Api::V1::SessionsController < ApplicationController
  before_action :find_session, only: [:show, :update, :create, :destroy]
  def index
    @sessions = Session.all
    render json: @sessions
  end

  def show
    render json: @session
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      render json: @session
    else
      render json: {errors: @session.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @session.update(session_params)
    if @session.save
      render json: @session, status: :accepted
    else
      render json: { errors: @note.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    @session.destroy
  end

  private

  def session_params
    params.permit(:title, :time, :location, :description)
  end

  def find_session
    @session = Session.find(params[:id])
  end
end
