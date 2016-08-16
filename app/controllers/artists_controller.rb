class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
	end

	def details
		@genres = Genre.all
		@artist = Artist.find(params[:id])
		@songs = @artist.songs
		
	end

	def addsong

		if params.require(:song)
		    # Create new song
		    @song = Song.new(song_params)

		    # Find artist and append new song to his current array of songs
		    @artist = Artist.find(params[:id])
		    @artist.songs << @song
		    @song.save

		    flash[:notice] = "Song saved successfully!"
		    redirect_to :action => 'details', :id => params[:id]
	    else
	    	flash[:notice] = "You can't leave blank fields"
	    end
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

		def song_params
			params.require(:song).permit(:title, :duration, :genre_id)
		end

end
