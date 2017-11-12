Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "tasks#index"
  resources :tasks do
  	member do
  		put :done
  	end
  end
end
