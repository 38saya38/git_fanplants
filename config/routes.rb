Rails.application.routes.draw do
  root 'tops#index'
  resources :tops
  # get 'tops/contact' =>'tops#contact'
  # get 'tops/about'   =>'tops#about'
  # get 'tops/link'    =>'tops#link'
  # get 'pages/elements'=>'pages#elements'
end