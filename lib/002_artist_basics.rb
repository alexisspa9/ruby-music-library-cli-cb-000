class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
   @songs
 end

  def self.all
    @@all
  end
  def add_song(song)
    song.artist = self
    self.songs << song unless songs.include?(song)

  end
  def save
    @@all << self
  end

  def self.create(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def self.destroy_all
    @@all.clear
  end

end
