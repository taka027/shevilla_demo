Rails.application.routes.draw do
  devise_for :users
  
  #get 'home/index'
  #root to: 'home#index' #ログアウト時のリダイレクト先
  
  
  root to: 'tokainaka#index'
  get '/lend', to: 'tokainaka#lend_top'
  get '/borrow', to: 'tokainaka#borrow_top'
  get '/detail/:id', to: 'tokainaka#detail'
  get '/board/:id', to: 'tokainaka#board'
  

  
  resources :areas
  resources :categories
  resources :villas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
