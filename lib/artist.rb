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

def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

end
