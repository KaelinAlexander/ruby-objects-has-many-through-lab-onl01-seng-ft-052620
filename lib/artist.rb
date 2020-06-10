class Artist
attr_accessor :name
  
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_song(song, genre)
    song = Song.new(song)
    song.artist = self
    song.genre = genre
    

end 