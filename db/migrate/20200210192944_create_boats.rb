# frozen_string_literal: true

class CreateBoats < ActiveRecord::Migration[6.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :description
      t.string :color
      t.number :size

      t.timestamps
    end
  end
end
