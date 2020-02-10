# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :pannier

  def initialize(id, color, price, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @pannier = Pannier.new
  end

  def add_cargo(item)
    self.pannier.add_cargo(item)
  end

  def remove_cargo(item)
    self.pannier.cargo_contents.remove(item)
  end

  def pannier_capacity
    self.pannier.capacity
  end

  def pannier_remaining_capacity
    self.pannier.remaining_capacity
  end

end

class Pannier
  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize()
    @cargo_contents = []
  end

    def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def capacity
    MAX_CARGO_ITEMS
  end

  def remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end
end

class BikeRental
  attr_accessor :bike, :customer, :start_date, :end_date

  def initialize(bike, customer, start_date, end_date)
    @bike = bike
    @customer = customer
    @start_date = start_date
    @end_date = end_date
  end

end
