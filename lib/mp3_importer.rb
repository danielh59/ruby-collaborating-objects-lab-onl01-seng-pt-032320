class MP3Importer
attr_accessor :song

def initialize
  @files = Dir.entries(path).grep(/.*\.mp3/)
end

end
