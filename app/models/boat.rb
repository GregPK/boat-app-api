# frozen_string_literal: true

class Boat < ApplicationRecord
  belongs_to :user

  validates :name, :description, presence: true
end
