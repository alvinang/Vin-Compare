Vincompare::Application.routes.draw do
  root to: 'vins#new'
  
  resources :vins
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
  
end
