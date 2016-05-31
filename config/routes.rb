Rails.application.routes.draw do
  resources :artists, only: [:index, :new, :create, :show, :edit] do
    resources :songs, only: [:new, :create]
  end

  resources :songs, only: [:show]
end
