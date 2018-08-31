class Song

  attr_accessor :name, :artist, :genre

  @@count  = 0
  @@artists = []
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)

      @name = name
      @artist = artist
      @genre = genre

      @@count += 1
      @@artists << artist
      @@genres << genre

  end
  

  def self.genres
     @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end


  def self.count
    @@count
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, genre_count|
      #genre_count is name of hash and is implicitly returned at end
      #genre is referring to each element in the @@genres array
      genre_count[genre] ||= 0
      genre_count[genre] += 1
      # genre_count[genre] is the hash key, add 1 if it exists already
      # || = sets a value if no value exists already, otherwise don't do anything
      # genre_count[genre] += 1 means that the value in key:value pair gets incremented by 1
    end
  end

# ALTERNATE WAY  via each
  # def self.genre_count
  #   genre_count = {}         - takes longer as you name  an empty genre_count
  #   @@genres.each do |genre|
  #     genre_count[genre] ||= 0
  #     genre_count[genre] += 1
  #   end
  # end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, artist_count|
      artist_count[artist] ||= 0
      artist_count[artist] += 1
      end
  end

end
