class Movie < ApplicationRecord
  validates :title, :overview, :poster_url, :rating, presence: true
  has_many :bookmarks
  has_many :lists, through: :bookmarks

end
