class MovieGenresController < ApplicationController

  def create
    @movie_genre = MovieGenre.new(
      movie_id: params["movie_id"],
      genre_id: params["genre_id"]
    )
    
    if @movie_genre.save
      render :show
    else
      render json: {message: @movie_genre.errors.full_messages},
      status: 422

    end

  end

end
