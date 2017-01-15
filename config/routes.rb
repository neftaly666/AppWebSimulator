Rails.application.routes.draw do
<<<<<<< HEAD
root 'home#sala'
  
  get "cuarto" => "home#cuarto", as: :cuarto
  get "garaje" => "home#garaje", as: :garaje
  get "cocina" => "home#cocina", as: :cocina
  get "bano" => "home#bano", as: :bano
  get "exterior" => "home#exterior", as: :exterior
  get "recomendaciones" => "home#recomendaciones", as: :recomendaciones
=======
 
  resources :iquipments

  resources :equipment

get 'home/index'
root 'home#index'
>>>>>>> origin/master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
