require 'rspec'
require_relative '../../lib/Airport_Challenge/airport'
require_relative '../../lib/Airport_Challenge/plane'
require_relative '../../lib/Airport_Challenge/weather'

RSpec.describe Weather do
  describe '#stormy?'do
    it "checks if the weather is stormy and raises an error when land" do
      #set up
      airport = Airport.new
      allow(Weather).to receive(:stormy?).and_return(true)

      #exercise
      plane = Plane.new

      #verify
      expect{ airport.land(plane) }.to raise_error
    end

    it "checks if weather is stormy and raises an error when take" do
      #set up
      airport = Airport.new
      allow(Weather).to receive(:stormy?).and_return(true)

      #exercise
      plane = Plane.new

      #verify
      expect{ airport.land(plane) }.to raise_error
      expect(airport.planes.count).to eq 0
      expect(airport.planes).not_to include plane
    end
  end
end