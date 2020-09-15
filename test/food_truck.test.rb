require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/food_truck'

class FoodTruckTest < Minitest::Test
  food_truck = FoodTruck.new("Rocky Mountain Pies")

  assert_instance_of FoodTruck, food_truck
end
