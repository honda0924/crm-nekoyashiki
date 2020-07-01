Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'clients#index'
  resources :clients do
    resources :contacts
    collection do
      post :bulk_insert
      post :import
    end
  end
end
