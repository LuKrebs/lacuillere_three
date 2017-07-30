Rails.application.routes.draw do
  get 'restaurants/index'

  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get 'hello', to: 'pages#welcome', as: :welcome

  root to: 'pages#home'

  get 'index', to: 'restaurants#index'

  post 'create', to: 'restaurants#create'

  get 'restaurants/:id', to: 'restaurants#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
