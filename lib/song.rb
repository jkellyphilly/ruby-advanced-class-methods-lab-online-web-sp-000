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

end

puts "Hi it's Joel"
