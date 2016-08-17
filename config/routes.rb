Rails.application.routes.draw do
  get 'songs/index'

  get 'songs/show'

  get 'songs/edit'

  get 'songs/new'

  get 'songs/create'

  get 'genres/index'

  get 'genres/browse'

	resources :artists
	resources :genres
	resources :songs

	root 'statics#home'

	get '/home' => 'statics#home'

	get '/about' => 'statics#about'

	get '/contact' => 'statics#contact'

	get '/details' => 'artists#details'

	post '/addsong' => 'artists#addsong'

	post '/artists/new' => 'artists#new'

	post '/genres/new' => 'genres#new'

	post '/genres/add_song_to_genre' => 'genres#add_song_to_genre'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
