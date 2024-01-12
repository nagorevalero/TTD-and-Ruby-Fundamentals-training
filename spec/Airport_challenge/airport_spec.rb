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

  describe "#take_off" do
    it 'instruct a plane to take off the airport' do
      #set up
      plane_one = Plane.new
      plane_two = Plane.new
      plane_three = Plane.new
      airport = Airport.new
      allow(Weather).to receive(:stormy?).and_return(false)

      #exercise
      airport.land(plane_one)
      airport.land(plane_two)
      airport.land(plane_three)
      airport.take_off(plane_one)

      #verify
      expect(airport.planes).not_to include(plane_one)
      expect(airport.planes).to include(plane_two, plane_three)
      expect(airport.planes.count).to eq 2
    end
  end

  describe "#full?" do
    context 'gives information about the airport capacity' do
      it 'returns true if the airport has more than 20 planes in the airport' do
        #set up
        airport = Airport.new
        allow(Weather).to receive(:stormy?).and_return(false)

        #exercise
        21.times do
          plane = Plane.new
          airport.land(plane)
        end

        #verify
        expect(airport.planes.count).to eq 21
        expect(airport.full?).to eq true
      end

      it 'returns true if the airport has 20 planes in the airport' do
        #set up
        airport = Airport.new
        allow(Weather).to receive(:stormy?).and_return(false)

        #exercise
        20.times do
          plane = Plane.new
          airport.land(plane)
        end

        #verify
        expect(airport.planes.count).to eq 20
        expect(airport.full?).to eq true
      end

      it 'returns true if the airport has less than 20 planes in the airport' do
        #set up
        airport = Airport.new
        allow(Weather).to receive(:stormy?).and_return(false)

        #exercise
        19.times do
          plane = Plane.new
          airport.land(plane)
        end

        #verify
        expect(airport.planes.count).to eq 19
        expect(airport.full?).to eq false
      end
    end
  end

  describe '#capacity' do
    context 'capacity is provided when creating airport' do
      it 'is not full when it exceeds the default capacity if the provided capacity is higher' do
        #set up
        airport = Airport.new(capacity: 50)
        allow(Weather).to receive(:stormy?).and_return(false)

          #exercise
        21.times do
          plane = Plane.new
          airport.land(plane)
        end
        #verify
        expect(airport.planes.count).to eq 21
        expect(airport.full?).to eq false
      end
    end
  end

  context 'when the weather is stormy' do
    it 'raises an error if a plane attempts to take off' do
      #set up
      plane = Plane.new
      airport = Airport.new

      #exercise
      allow(Weather).to receive(:stormy?).and_return(false)

      #verify
      airport.land(plane)

      #exercise
      allow(Weather).to receive(:stormy?).and_return(true)

      #verify
      expect{ airport.take_off(plane) }.to raise_error
    end

    it 'raises an error if a plane attempts to land' do
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
