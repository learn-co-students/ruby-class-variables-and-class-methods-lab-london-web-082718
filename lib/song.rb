class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    @@genres.group_by{ |genre| genre }.flat_map{ |k, v| {k => v.size} }.reduce({}, :merge)
  end

  def self.artist_count
    @@artists.group_by{ |artist| artist }.flat_map{ |k, v| {k => v.size} }.reduce({}, :merge)
  end
end
