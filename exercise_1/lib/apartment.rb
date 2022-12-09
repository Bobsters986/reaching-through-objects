class Apartment
attr_reader :rented, :rooms

def initialize
    @rented = false
    @rooms = []
end

def rent
    @rented = true
end

def is_rented?
    @rented
end

def add_room(room_type)
    @rooms << room_type
end

end