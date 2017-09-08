Rails.application.routes.draw do
  resources :imported_protocols
  post 'jsons/save' => 'imported_protocols/save', :as => :save
  resources :jsons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
