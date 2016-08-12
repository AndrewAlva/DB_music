class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
	end

	def details
		@artist = Artist.find_by_id(params[:id])
		@songs = @artist.songs
	end
end
