Rails.application.routes.draw do
  root "application#index"
  resources :products do
    resources :reviews
  end
end
