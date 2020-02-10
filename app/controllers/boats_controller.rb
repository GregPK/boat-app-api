# frozen_string_literal: true

class BoatsController < ApplicationController
  def index
    render json: Boat.all
  end
end
