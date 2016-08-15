class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
	end

	def details
		@artist = Artist.find_by_id(params[:id])
		@songs = @artist.songs
	end

	def new
		@artist = Artist.new(artist_params)
		@artist.save

		redirect_to :action => :index
	end

	private
		def artist_params
			params.require(:artist).permit(:name, :age)
		end

end
