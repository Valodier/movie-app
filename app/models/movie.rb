class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  # validates :title, length: {minimum: 2}
  # validates :title, presence: true
  # validates :year, length: {minimum: 4}
  # validates :year, presence: true
  # validates :director, presence: true
  # validates :director, length: {minimum: 2}

  # def genre_names
        
  # end
end
