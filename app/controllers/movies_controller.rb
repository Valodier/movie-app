class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end

  def create
    @movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
    )
    if @movie.save
      render :show
    else
      render json: {errors: @movie.errors.full_messages},
      status: 422
    end    
  end

  def show
    movie_id = params[:id]
    @movie = Movie.find_by(id: movie_id)
    render :show
  end

  def update
    movie_id = params[:id]
    @movie = Movie.find_by(id: movie_id)

    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director


    if @movie.save
      render :show
    else
      render json: {errors: @movie.errors.full_messages},
      status: 422
    end
  end

  def destroy
    movie_id = params[:id]
    movie = Movie.find_by(id: movie_id)
    movie.destroy

    render json: {message: "IT'S GONE FOREVER NOOOO"}
  end

end
