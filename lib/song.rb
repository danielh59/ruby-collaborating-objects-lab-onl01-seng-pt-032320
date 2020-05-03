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

  def self.new_by_filename(file)
  song.artist.name = file.split(" - ")[0]
  song_name = file.split(" - ")[1]
  song = Song.new(song_name)
  song.artist = song
  song
  end

end
