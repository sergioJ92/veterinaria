Rails.application.routes.draw do

  resources :labs, :path => "laboratorios"
  resources :incomings, :path => "ingresos"
  resources :vacunas
  resources :products
  resources :type_products
  devise_for :users
  resources :veterinaries, :path => "veterinarios"  
  resources :services, :path => "servicios"  
  resources :type_services, :path => "tipo_servicios"   
  resources :internships, :path => "hospitalizaciones"  
  resources :pets, :path => "mascotas"  
  resources :clients, :path => "clientes"  
  root 'static_pages#home'
  get 'admin/users' => 'admin#convert'
  get 'admin/users_convert/:id' => 'admin#convert_almacen'
  get 'mascotas/servicio/:id' => 'pets#service'
  get '/mascotas/vacuna/:id' => 'pets#vacuna'
  post 'mascotas/servicio/save' => 'pets#saveService'
  post 'mascotas/vacuna/save' => 'pets#saveVacuna'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
