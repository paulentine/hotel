require_relative "./spec_helper"

describe "Hotel" do
  before do
    @test_hotel = BookingSystem::Hotel.new
  end

  describe "initialize" do
    it "creates an instance of Hotel" do
      expect(@test_hotel).must_be_kind_of BookingSystem::Hotel
    end
  end

  describe "add_room" do
    it "adds room into instance variable of rooms" do
      @test_room = BookingSystem::Room.new(room_num: 1337)
      @test_hotel.add_room(@test_room)
      expect(@test_hotel.rooms.count).must_equal 1
      expect(@test_hotel.rooms[-1].room_num).must_equal @test_room.room_num
    end
  end

  describe "list_rooms" do
    before do
      @test_room = BookingSystem::Room.new(room_num: 1337)
    end

    it "returns nil if there is no room in the hotel" do
      expect(@test_hotel.list_rooms).must_equal nil
    end

    it "returns an array of all the rooms in the hotel" do
      @test_hotel.add_room(@test_room)
      all_rooms = @test_hotel.list_rooms
      expect(all_rooms).must_be_kind_of Array
      expect(all_rooms.count).must_equal 1
    end
  end

  describe "available?" do

  end

  describe "book" do

  end

  describe "reservations_by_date" do

  end
end