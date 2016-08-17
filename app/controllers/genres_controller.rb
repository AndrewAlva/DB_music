class GenresController < ApplicationController
  def index
  	@genres = Genre.all
  end

  def browse
  	if (params[:id])
      @genre = Genre.find(params[:id])
      @artists = Artist.all
  	else
  		redirect_to :action => 'index'
  	end
  end

  def new
    @genre = Genre.new(genre_params)
    @genre.save

    redirect_to :action => 'index'
  end

  def add_song_to_genre
    @song = Song.new(song_params)

    @genre = Genre.find(params[:id])
    @genre.songs << @song
    @song.save

    flash[:notice] = "Song saved successfully!"
    redirect_to :action => 'browse', :id => params[:id]
  end

  private
    def genre_params
      params.require(:genre).permit(:name)
    end

    def song_params
      params.require(:song).permit(:title, :artist_id, :duration)
    end
end
