class Song
  attr_accessor :name, :artist

    @@all = [ ]

  def initialize(name)
  @name = name
  @@all << self
  end

  def self.all
  @@all
  end

def self.new_by_filename(song)
song = Song.new(song).split("-")[0]
end

end
