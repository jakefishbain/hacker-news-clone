Rails.application.routes.draw do
  resources :users, except: [:index] do
    member do
      get 'articles'
      get 'comments'
    end
  end

  resources :articles do
    member do
      resources :comments, except: [:index, :show]
    end
  end

  root 'articles#index'
end
