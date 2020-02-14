# frozen_string_literal: true

require 'knock/authenticable'

class ApplicationController < ActionController::API

  include Knock::Authenticable
end
