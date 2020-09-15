class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |truck|
      truck.inventory.keys.include?(item)
    end
  end

  def total_inventory
    items = @food_trucks.flat_map do |truck|
      truck.inventory.keys
    end.uniq
    inventory = Hash.new({})
    items.each do |item|
      inventory[item] = {quantity: 0, food_trucks: []}
    end
    inventory.sum do |item, data|

    end
  end

  def sorted_item_list
    items = @food_trucks.flat_map do |truck|
      item = truck.inventory.keys
    end.uniq
    items.map do |item|
      item.name
    end.sort
  end
end
