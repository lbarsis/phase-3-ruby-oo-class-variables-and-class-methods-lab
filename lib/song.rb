require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end
end

song1 = Song.new('name1', 'artist1', 'genre1')
song2 = Song.new('name2', 'artist2', 'genre2')
song3 = Song.new('name3', 'artist3', 'genre3')
song1 = Song.new('name4', 'artist4', 'genre1')
song2 = Song.new('name5', 'artist5', 'genre2')
song3 = Song.new('name6', 'artist6', 'genre3')

binding.pry