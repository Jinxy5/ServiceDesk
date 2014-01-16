ServiceDesk::Application.routes.draw do
  resources :customers do
  	resources :computers
  end

  root to: "welcome#index"


end

