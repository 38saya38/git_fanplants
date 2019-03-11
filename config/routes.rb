Rails.application.routes.draw do
  root 'tops#index'
  get 'tops/contact' =>'tops#contact'
  post 'tops/confirm' =>'tops#confirm'
  get 'tops/about'   =>'tops#about'
  get 'tops/link'    =>'tops#link'
  get 'pages/elements'=>'pages#elements'
end