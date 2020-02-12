class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    (2 * self.bike.price) + (2 * self.bike.luggage.weight)
  end

  def weight
    self.bike.weight + self.bike.luggage.count
  end

end
