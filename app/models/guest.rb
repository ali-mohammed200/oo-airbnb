class Guest
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
  end
  def self.all
    @@all
  end
  def trips
    Trip.all.select { |obj| obj.guest == self}
  end
  def listings
    self.trips.map { |obj| obj.listing }
  end
  def trip_count
    self.trips.count
  end
  def self.pro_traveler
    Trip.all.select { |obj| obj.guest.trip_count > 1 }
  end
  def self.find_all_by_name(gname)
    Trip.all.select { |obj| obj.guest.name == gname}
  end
end
