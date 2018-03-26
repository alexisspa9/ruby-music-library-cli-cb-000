class Song
  attr_accessor :name
  def initialize(name)
  @name = name
  @@all = []

  end
  def self.all
    @@all

  end
  def save
    @@all << self
    
  end
  def destroy_all
    @@all.clear

  end
end
