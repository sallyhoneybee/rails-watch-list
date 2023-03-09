require 'open-uri'
require 'json'

url = 'https://tmdb.lewagon.com/movie/top_rated'
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)


movies["results"].each do |movie|
  Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: movie["poster_path"], rating: movie["vote_average"])
end
