Rails.application.routes.draw do
  get 'genres/index'

  get 'genres/browse'

	resources :artists
	resources :genres

	root 'statics#home'

	get '/home' => 'statics#home'

	get '/about' => 'statics#about'

	get '/contact' => 'statics#contact'

	get '/details' => 'artists#details'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
