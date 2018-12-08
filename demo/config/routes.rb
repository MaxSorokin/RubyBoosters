Rails.application.routes.draw do
  get '/home', to: 'tests#home'
  root 'tests#index'
end
