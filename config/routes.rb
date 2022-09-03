Rails.application.routes.draw do
  resources :books, only: :index do
    resources :lends, only: [ :new, :create ]
  end
end
