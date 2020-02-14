# frozen_string_literal: true

class BoatsController < ApplicationController
  before_action :authenticate_user

  def index
    render json: user_boats
  end

  def show
    render json: authenticated_boat
  end

  def update
    authenticated_boat.update!(boat_params)
    render json: authenticated_boat
  end

  def destroy
    authenticated_boat.destroy!
    render :ok
  end

  private

  def user_boats
    Boat.where(user: current_user)
  end

  def boat_params
    params.permit(:name, :size, :color, :description)
  end

  def authenticated_boat
    @boat ||= user_boats.find(params[:id])
  end
end
