class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name, artist = nil)
    @name = name
  self.artist = artist if artist
  end

  def self.all
    @@all
  end
  def artist
    @artist
  end

  def save
    @@all << self
  end

  def self.create(name)
    new_song = self.new(name)
    new_song.save
    new_song
  end

  def self.destroy_all
    @@all.clear
  end

end
