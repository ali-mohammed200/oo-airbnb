class Listing
  attr_reader :city
  @@all = []
  def initialize(city)
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end
  def trips
    Trip.all.select { |obj| obj.listing == self}
  end
  def guests
    self.trips.map { |obj| obj.guest }
  end
  def trip_count
    self.trips.count
  end
  def self.find_all_by_city(cityName)
    Listing.all.select { |obj| obj.city == cityName}
    #Trip.all.select { |obj| obj.listing.city == cityName}
    #Mine choose only listings that were in a trip
  end
  def self.most_popular
    Listing.all.max_by { |listing|
      listing.trip_count
    }
    # max = 0
    # maxCity = []
    # current = 0
    # currentCity= []
    # Trip.all.each { |obj|
    #   current = obj.listing.trip_count
    #   currentCity = obj.listing
    #   if current > max
    #     max = current
    #     maxCity = currentCity
    #   end
    # }
    # maxCity
  end
end
