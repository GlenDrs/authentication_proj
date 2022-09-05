Rails.application.routes.draw do
  root to: "static_pages#landing_page"

  resources :users, only: [:index, :show, :new, :create, :delete]

end
