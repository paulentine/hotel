STANDARD_RATE = 200

module BookingSystem
  class Room
    attr_reader :room_num, :price
    attr_accessor :reservations

    def initialize(room_num:, price: STANDARD_RATE, reservations: [])
      @room_num = room_num
      @price = price
      @reservations = reservations
    end

    def add_reservation(reservation)
      reservations << reservation
    end
  end
end