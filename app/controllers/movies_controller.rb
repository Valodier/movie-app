class MoviesController < ApplicationController
  def show
    movie_id = params["id"]
    movie = Movie.fetch(id: movie_id)
    render json: movie.as_json
  end

  def index
    movies = Movie.all
    render json: movies.as_json
  end
end
