class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]
  before_action :get_songs_and_genres, only: [:edit, :update]

  def index
    @songs = Song.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to songs_path, notice: 'Song was successfully updated.' }
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  end

  def create
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def get_songs_and_genres
      @artists = Artist.all
      @genres = Genre.all
    end

    def song_params
      params.require(:song).permit(:title, :artist_id, :genre_id, :duration)
    end
end
