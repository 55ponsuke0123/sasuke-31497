Rails.application.routes.draw do
  devise_for :users
  root to: "patients#index"
  resources :patients do
  end
end
