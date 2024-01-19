class BookmarksController < ApplicationController
  skip_forgery_protection

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:movie][:id])
    @bookmark.list = @list
    @bookmark.movie = @movie
    @bookmark.comment = params[:comment]
    @bookmark.save!
    redirect_to list_path(@list)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def skip_forgery_protection(options = {})
    skip_before_action :verify_authenticity_token
  end
end
