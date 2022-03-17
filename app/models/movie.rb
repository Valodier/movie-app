class Movie < ApplicationRecord
  validates :title, length: {minimum: 2}
  validates :title, presence: true
  validates :year, length: {minimum: 4}
  validates :year, presence: true
  validates :director, presence: true
  validates :director, length: {minimum: 2}
end
