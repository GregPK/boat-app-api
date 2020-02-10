# frozen_string_literal: true

require 'test_helper'

class BoatsControllerTest < ActionDispatch::IntegrationTest
  fixtures :boats
  test '/boats' do
    get('/boats')

    json_data = JSON.parse(body)
    boat_names = json_data.map { |b| b['name'] }

    assert_equal json_data.size, 2
    assert_includes boat_names, 'Boaty McBoatface'
    assert_includes boat_names, 'Boaty McBoatface 2'
  end
end
