Rails.application.routes.draw do

  devise_for :admins

  resources :beers do
    member do
      get :purchase
    end
  end
end
