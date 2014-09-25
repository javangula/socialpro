Socialpro::Application.routes.draw do
  devise_for :users
  root :to => 'home#index'
  match '/display_tweets'=>'Reviews#display_tweets', :as=>:filter_submit
	get '/filters' => 'Reviews#filter'
#	post '/filter_submit' => 'Reviews#filter_submit', :as => :filter_submit
end
