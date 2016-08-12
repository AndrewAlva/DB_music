class GenresController < ApplicationController
  def index
  	@genres = Genre.all
  end

  def browse
  	if params.include? :id

      # Este comando es el que viene en el tutorial, pero no funciona
  		@genre = Genre.find(:first, :conditions => ['id = ?', params[:id]])

      # También intenté con este comando pero tampoco jaló, los probé por separado, comentados y sin comentarios
      # @genre = Genre.find_by_id(params[:id])
  	else
  		redirect_to :action => 'index'
  	end
  end
end
