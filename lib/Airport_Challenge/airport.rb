
class Airport
  def initialize(capacity: 20)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    @planes << plane
  end

  def planes
    @planes
  end

  def take_off(plane)
    @planes.delete(plane)
  end

  def full?
    planes.count >= @capacity
  end

end