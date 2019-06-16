Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'pages/contact'
  get 'pages/careers'

end
