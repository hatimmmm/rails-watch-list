require "open-uri"
require "json"

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @lists = List.all
    @bookmark = Bookmark.new
  end

  def new
    @movie = Movie.new
    # title = params[:movie][:title]
  end

  def create
    title = params[:movie][:title]
    api_key = "26c8c42e"
    url = "http://www.omdbapi.com/?t=#{title}&apikey=#{api_key}"
    movie_serialized = URI.open(url)
    movie = JSON.parse(movie_serialized.read)
    Movie.create(title: movie["Title"], overview: movie["Plot"], poster_url: movie["Poster"], rating: movie["imdbRating"])
    redirect_to movie_path(Movie.last)
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update()
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.bookmarks.each do |bookmark|
      bookmark.destroy
    end

    @movie.destroy
    redirect_to movies_path
  end
end
