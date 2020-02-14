# frozen_string_literal: true

class BoatsController < ApplicationController
  def index
    render json: Boat.all
  end
  
  def show
    render json: Boat.find(params[:id])
  end

  def update
    Boat.find(params[:id]).update!(boat_params)
    render json: Boat.find(params[:id])
  end

  def boat_params
    params.permit(:name, :size, :color, :description)
  end
end
