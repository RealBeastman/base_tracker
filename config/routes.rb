Rails.application.routes.draw do
  resources :defenses

  root "defenses#index"
end
