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
    song = Song.new(song, genre)
    song.artist = self
    song.genre = genre
  end
  
  def songs
    Song.all.select{|song| song.artist == self}
  end
  
  def genres
    Genre.all.select{|song| song.artist == self}
    # Potentially need .uniq here?
  end
    

end 