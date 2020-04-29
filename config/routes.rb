Rails.application.routes.draw do
  root 'memos#new'
  resources :memos, only: [:index, :create, :new]
  namespace :api do
    resources :random_themes, only: :index, defaults: { format: 'json' }
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
