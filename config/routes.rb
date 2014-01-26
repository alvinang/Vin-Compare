Vincompare::Application.routes.draw do
  resources :vins
  
  root to: 'vins#new'
end
