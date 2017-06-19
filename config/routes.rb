Rails.application.routes.draw do
  resources :products
  resources :type_products
  devise_for :users
  resources :veterinaries, :path => "veterinarios"  
  resources :services, :path => "servicios"  
  resources :type_services, :path => "tipo_servicios"   
  resources :internships, :path => "hospitalizaciones"  
  resources :pets, :path => "mascotas"  
  resources :clients, :path => "clientes"  
  root 'pets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
