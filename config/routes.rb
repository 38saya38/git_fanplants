Rails.application.routes.draw do
  root 'tops#index'
  get 'tops/contact' =>'tops#contact'
end