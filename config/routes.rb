Rails.application.routes.draw do
  resources :plans
  get "/companies", to: "companies#index"
  
  root :to => 'companies#home'
   
  resources :companies
end
