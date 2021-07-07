class Trip

    attr_accessor :guest, :listing

    @@all = []

    def initialize(guest, listing)
        @guest = guest
        @listing = listing
        @@all << self
    end

    def listings
       @@all.select {|trip| trip.listing if trip == self}
    end

    def guests
        @@all.select {|trip| trip == self}
    end

    def self.all
        @@all
    end


end
