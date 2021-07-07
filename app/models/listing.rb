class Listing

    attr_accessor :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def guests
        trips.map { |trip| trip.guest }
    end

    def trips
        Trip.all.select { |trip| trip.listing == self}
    end

    def trip_count
        trips.length
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        all.select {|list| list.city == city}
    end

    def self.most_popular
        all.max_by(&:trip_count)
    end





end
