class Artist
attr_accessor :name

@@all = []

initialize(name)
@name = name 
@@all << self
end
