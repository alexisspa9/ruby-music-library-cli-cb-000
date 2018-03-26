class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
  self.artist = artist if artist
  self.genre = genre if genre
  end
  def artist=(artist)
      @artist = artist
      artist.add_song(self)
    end
    def genre=(genre)
        @genre = genre
        artist.add_song(self)
      end
  def self.all
    @@all
  end
  def artist
    @artist
  end
  def genre
    @genre

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
