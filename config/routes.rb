Rails.application.routes.draw do
  resources :users, except: [:index] do
    member do
      get 'articles'
      get 'comments'
    end
  end
  resources :articles
  resources :comments, except: [:index, :show]

  root 'articles#index'
end
