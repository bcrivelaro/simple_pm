Rails.application.routes.draw do
  resources :projects do
    scope module: :projects do
      resources :tasks, except: [:index]
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "projects#index"
end
