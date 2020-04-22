Rails.application.routes.draw do

  root to: 'cocktails#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:home, :index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy], shallow: true
  end
  resources :contacts, :home, only: [:index, :new, :create]
end
