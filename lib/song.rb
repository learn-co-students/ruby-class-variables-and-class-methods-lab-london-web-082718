class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name

    @artist = artist
    @@artists << artist

    @genre = genre
    @@genres << genre

    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |artist, counter|
      counter[artist] += 1
    end
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) do |genre, counter|
      counter[genre] += 1
    end
  end

end
