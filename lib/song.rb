class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  # Class Methods

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(song_title)
    song = self.new
    song.name = song_title
  end

end

puts "Hi it's Joel"
