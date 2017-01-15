Rails.application.routes.draw do
  resources :components
root 'home#sala'
  
  get "cuarto" => "components#new", as: :cuarto
  get "garaje" => "components#new", as: :garaje
  get "cocina" => "components#new", as: :cocina
  get "bano" => "components#new", as: :bano
  get "resultado" => "components#index", as: :resultado
  get "recomendaciones" => "home#recomendaciones", as: :recomendaciones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
