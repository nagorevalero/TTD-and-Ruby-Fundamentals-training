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

  end
end