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
    authenticated_boat.update(boat_params)
    if authenticated_boat.valid?
      render json: authenticated_boat, status: :created
    else
      render json: {errors: authenticated_boat.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    authenticated_boat.destroy!
    render json: :ok, status: :ok
  end

  def create
    boat = Boat.create(boat_params.merge(user: current_user))

    if boat.valid?
      render json: boat, status: :created
    else
      render json: {errors: boat.errors}, status: :unprocessable_entity
    end
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
