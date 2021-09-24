Rails.application.routes.draw do
  resources :patients
  #get home/index'
  #get '/home', to: 'home#index'

  root 'home#index'

  # get '/doctors', to: 'doctors#index', as: 'doctors'
  # get '/doctors/new', to: 'doctors#new'
  # get '/doctors/:id', to: 'doctors#show', as: 'doctor'
  # post '/doctors', to: 'doctors#create'
  # get '/doctors/:id/edit', to: "doctors#edit", as: "edit_doctor"
  # patch '/doctors/:id', to: "doctors#update"
  # delete '/doctors/:id', to: "doctors#destroy"
  resources :doctors

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
