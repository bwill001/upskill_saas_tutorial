Rails.application.routes.draw do
  # controller#action
  root to: 'pages#home'
  get 'about', to: 'pages#about'
end
