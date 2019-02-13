Rails.application.routes.draw do
  root 'tops#index'
  get 'tops/contact' =>'tops#contact'
  get 'tops/about'   =>'tops#about'
end