Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: :index
  
  # resources :students, only: :show
  # ^^ (this passed, but was it correct?)
  get "students/:id", to: "students#show"
  
  # both can be refactored --
  # resources :students, only: [:index, :show]


end
