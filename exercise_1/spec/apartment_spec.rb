require_relative '../lib/room'
require_relative '../lib/apartment'

RSpec.describe Room do

    it 'can be rented' do
        apartment = Apartment.new

        expect(apartment.is_rented?).to be false
        
        apartment.rent
        expect(apartment.is_rented?).to be true
    end

    it 'can have up to 4 rooms' do
        apartment = Apartment.new
        bathroom = Room.new("bathroom")
        laundry = Room.new("laundry")
        kitchen = Room.new("kitchen")
        bedroom = Room.new("bedroom")

        apartment.add_room(bathroom)
        apartment.add_room(laundry)
        apartment.add_room(kitchen)
        apartment.add_room(bedroom)

        expect(apartment.rooms).to eq([bathroom, laundry, kitchen, bedroom])
    end
end