class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def create
    movie = Movie.new(
      title: params["title"],
      year: params[1],
      plot: params[""]
    )

    movie.save
    render json: movie.as_json
  end

  def show
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    render json: movie.as_json
  end

  def update
    movie_id = params[:id]
    movie = Movie.find_by(id: movie_id)

    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = prams["plot"] || movie.plot

    movie.save
    render json: movie.as_json
  end

  def method_name
    
  end

end
