# frozen_string_literal: true

class BoatsController < ApplicationController
  def index
    render json: Boat.all
  end
  def show
    render json: Boat.find(params[:id])
  end
end
