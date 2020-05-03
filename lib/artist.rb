class Artist
attr_accessor :name

@@all = []

initialize(name)
@name = name
@@all << self

def self.all
@@all
end

def add_song
the_song.artist = self
end

def song
  Song.all.select{|x| x.artist == self}
end

end
