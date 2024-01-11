require 'rspec'
require_relative '../../lib/Airport_Challenge/airport'
require_relative '../../lib/Airport_Challenge/plane'
require_relative '../../lib/Airport_Challenge/weather'

RSpec.describe Airport do
  describe "#land" do
    it 'instructs a plane to land in the airport' do
      #set up
      airport = Airport.new
      plane = Plane.new
      allow(Weather).to receive(:stormy?).and_return(false) #this is stubbing - you force to be this way as in you are forcing that it will not be stormy

      #exercise
      airport.land(plane)

      #verify
      expect(airport.planes).to include plane
      expect(airport.planes.count).to eq(1)
    end

    it 'confirms that 2 planes have landed in the airport' do
      #set up
      plane_one = Plane.new
      plane_two = Plane.new
      airport = Airport.new
      allow(Weather).to receive(:stormy?).and_return(false)

      #exercise
      airport.land(plane_one)
      airport.land(plane_two)

      #verify
      expect(airport.planes).to include(plane_one, plane_two)
      expect(airport.planes.count).to eq(2)
    end
  end
end