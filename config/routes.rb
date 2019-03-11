Rails.application.routes.draw do
  root 'tops#index'
  get 'tops/contact' =>'tops#contact' #問い合わせフォーム
  post 'tops/confirm' =>'tops#confirm' #確認画面
  post 'tops/thanks' =>'tops#thanks' #送信完了画面
  get 'tops/about'   =>'tops#about'
  get 'tops/link'    =>'tops#link'
  get 'pages/elements'=>'pages#elements'
end