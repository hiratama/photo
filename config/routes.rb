Rails.application.routes.draw do
  resources :comments
  root to: redirect('/ideas')
  resources :ideas
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
