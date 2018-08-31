require 'pry'
class Song
  # Class variables
    @@count = 0
    @@artists = []
    @@genres = []
    @@count_of_genres = {}
    @@count_of_artists = {}

  attr_accessor :name, :artist, :artists, :genre, :genres, :count, :artist_count, :genre_count

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    #binding.pry
    @@count = @@count + 1
  end

  def self.count
    @@count
  end

def self.genres
  @@genres.uniq.flatten
end

def self.artists
  @@artists.uniq.flatten
end

def self.genre_count
@@genres.each do |type|
  if @@count_of_genres[type]
  @@count_of_genres[type] += 1
else
  @@count_of_genres[type] = 1
end
end
@@count_of_genres
end

def self.artist_count
@@artists.each do |type|
  if @@count_of_artists[type]
  @@count_of_artists[type] += 1
else
  @@count_of_artists[type] = 1
end
end
@@count_of_artists
end

end

# Write a class method, .genres that returns an array of all of the genres of existing songs. This array should contain only unique genres––no duplicates! Think about what you'll need to do to get this method working.
# You'll need a class variable, let's call it @@genres, that is equal to an empty array.
# When should you add genres to the array? Whenever a new song is created. Your #initialize method should add the genre of the song being created to the @@genres array. All genres should be added to the array. Control for duplicates when you code your .genres class method, not when you add genres to the original @@genres array. We will want to know how many songs of each genre have been created. We'll revisit that job a little later on.
# Write a class method, .artists, that returns an array of all of the artists of the existing songs. This array should only contain unique artists––no repeats! Once again think about what you need to do to implement this behavior.
# You'll need a class variable, let's call it @@artists, that is equal to an empty array.
# When should you add artists to this array? Whenever a new song is intialized. Your #initialize method should add artists to the @@artists array. All artists should be added to the array. Control for duplicates when you code your .artists class method, not when you add artists to the original @@artists array. We will want to know how many songs each have been assigned to each artist. We'll revisit that job a little later on when we write our .artist_count method.
# Write a class method, .genre_count, that returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
