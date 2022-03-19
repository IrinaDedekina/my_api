Rails.application.routes.draw do
  resources :users

  get 'new' => 'users#new'
  get 'show' => 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
