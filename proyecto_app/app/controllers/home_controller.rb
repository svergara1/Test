class HomeController < ApplicationController
  def index
  		@users = User.all
		@songs = Song.all
		@bands = Band.all
		@artists = Artist.all
		@albums = Album.all

  end
end
