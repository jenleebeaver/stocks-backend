Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :portfolios
      resources :stocks
      resources :cryptoexchanges
      resources :portfolio_stocks
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # fetch('http://localhost:3000/api/v1/portfolios')
end
