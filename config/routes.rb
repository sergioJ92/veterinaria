Rails.application.routes.draw do
  resources :veterinaries
  resources :services
  resources :type_services
  resources :internships
  resources :pets
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
