Rails.application.routes.draw do
  root 'landing_page#index'
  post '/', to: 'landing_page#subscribing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
