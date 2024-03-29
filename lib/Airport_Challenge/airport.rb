
require 'pry'
class Airport

  attr_reader :planes
  def initialize(capacity: 20)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    if Weather.stormy? || full?
      raise "Cannot land plane when is stormy or full"
    else
      planes << plane
    end
  end

  def take_off(plane)
    if Weather.stormy?
      raise "Cannot take off plane when stormy"
    else
      planes.delete(plane)
    end
  end

  def full?
    planes.count >= @capacity
  end

end
