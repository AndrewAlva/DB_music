class GenresController < ApplicationController
  def index
  	@genres = Genre.all
  end

  def browse
  	if params.include? :id
  		# @genre = Genre.find_by_id(params[:id])
  		@genre = Genre.find(:first, :conditions => ['id = ?', params[:id]])
  	else
  		redirect_to :action => 'index'
  	end
  end
end
