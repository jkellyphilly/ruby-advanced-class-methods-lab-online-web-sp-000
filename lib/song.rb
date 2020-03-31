class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  # Class methods

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(song_title)
    song = self.new
    song.name = song_title
    song
  end

  def self.create_by_name(song_title)
    song = self.create
    song.name = song_title
    song
  end

  def self.find_by_name(song_title)
    @@all.find {|song| song.name == song_title}
  end

  def self.find_or_create_by_name(song_title)

  end

  def self.alphabetical

  end

  def self.new_from_filename

  end

  def self.create_from_filename

  end

  def self.destroy_all
    self.all.clear
  end
end
