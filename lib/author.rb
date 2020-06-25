class Author

attr_accessor :name

def initialize(name)
  @name = name
end

def add_post(post)
  post.artist = self
end

def add_post_by_name(name)
  post = Song.new(name)
  add_post(post)
end

def posts
 Song.all.select {|post| post.artist == self}
end

def self.post_count
  return Song.all.size
end

end
