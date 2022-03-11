class MoviesController < ApplicationController
  def one_movie
    movie_id = params["id"]
    movie = Movie.fetch(id: movie_id)
    render json: movie.as_json
  end

  def all_movies
    movies = Movie.all
    render json: movies.as_json
  end
end
