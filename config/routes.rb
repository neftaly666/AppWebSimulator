Rails.application.routes.draw do
root 'home#sala'
  
  get "cuarto" => "home#cuarto", as: :cuarto
  get "garaje" => "home#garaje", as: :garaje
  get "cocina" => "home#cocina", as: :cocina
  get "bano" => "home#bano", as: :bano
  get "exterior" => "home#exterior", as: :exterior
  get "recomendaciones" => "home#recomendaciones", as: :recomendaciones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
