Rails.application.routes.draw do

	root :to => 'weddings#index'
	
	resources :guests, :images, :emails
	# resources :weddings

	get '/users/edit' => 'users#edit', :as => :edit_user #by doing this, user is not able to see the id in the URL
	resources :users, :except => [:edit]

	resources :weddings do
		resources :guests, :emails
	end

	get '/login' => 'session#new' 
	post '/login' => 'session#create' #log me in
	delete '/login' => 'session#destroy' #logout

end
