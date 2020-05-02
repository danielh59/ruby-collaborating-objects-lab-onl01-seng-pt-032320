class Artist
attr_accessor :name

@@all = []

initialize(name)
@name = name
@@all << self

def self.all
@@all
end

def add_song(the_song)
  
Song.artist = self
end

end
