Rails.application.routes.draw do

  devise_for :admins, controllers: {
    registrations: "admins/registrations",
    confirmations: "admins/confirmations",
    passwords:     "admins/passwords",
    sessions:      "admins/sessions",
    unlocks:       "admins/unlocks"
  }

  resources :beers do
    member do
      get :purchase
    end
  end
end
