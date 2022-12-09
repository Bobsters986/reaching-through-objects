require './lib/room'

RSpec.describe Room do
    it "has names of rooms" do
        bathroom = Room.new("bathroom")

        expect(bathroom.name).to eq("bathroom")
    end

end