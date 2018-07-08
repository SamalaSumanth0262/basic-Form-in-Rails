Rails.application.routes.draw do
  get 'details/new'
  get 'details/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :details
end
