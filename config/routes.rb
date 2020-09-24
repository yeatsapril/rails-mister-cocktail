Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %i[index new show create edit destroy] do
    resources :doses, only: %i[create]
  end
end
