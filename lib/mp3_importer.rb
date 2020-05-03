class MP3Importer
attr_accessor :song

initialize
  @files = Dir.entries(path).grep(/.*\.mp3/)
end
