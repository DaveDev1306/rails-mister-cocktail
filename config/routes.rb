Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses,  only: %i[index new create destroy]
    resources :ingrediences, only: [:index]
  end
  resources :cocktails, only: [:destroy]
end
