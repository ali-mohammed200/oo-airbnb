class Guest
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all < self
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
    Guest.all.select { |obj| obj.trip_count > 1 }
  end
  def self.find_all_by_name(gname)
    Guest.all.select { |obj| obj.name == gname}
  end
end
