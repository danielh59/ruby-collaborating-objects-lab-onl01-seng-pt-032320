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

def add_song(song)
song.artist = self
end

def songs
  Song.all.select{|x| x.artist == self}
end

def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end


def self.find_or_create_by_name(name)
    self.detect(name) || self.create(name)
end

  def print_songs
    songs.each { |x| puts x.name }
  end


end
