Rails.application.routes.draw do
  devise_for :users
  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms'   => 'site#terms'

  get  'url'    => 'url#index'
  post 'url'    => 'url#create'
end
