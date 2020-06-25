class Song

@@all = []

attr_accessor :name, :artist

def initialize(name)
  @name = name
  save
end

def save
  @@all << self
end


def self.all
  return @@all
end

def artist_name
  return self.artist.name
end


end
