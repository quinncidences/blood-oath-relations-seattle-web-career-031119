class Cult

  attr_accessor :name, :location, :founded, :slogan

  @@all = []

  def initialize(name, location, founded, slogan)
    @name = name
    @location = location
    @founded = founded
    @slogan = slogan
    @@all << self
  end

  def recruit_follower(follower)
    BloodOath.new(self, follower)
  end

  def cult_oaths
    BloodOath.all.select {|oath| oath.cult == self}
  end

  def follower_list
    cult_oaths.map {|cult| cult.follower}
  end

  def cult_population
    follower_list.count
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Cult.all.find {|cult| cult.name == name}
  end

  def self.find_by_location(location)
    Cult.all.select {|cult| cult.location == location}
  end

  def self.find_by_founding_year(year)
    Cult.all.select {|cult| cult.founded == year}
  end




end
