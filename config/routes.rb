Rails.application.routes.draw do
  devise_scope :user do
    get '/users', to: 'devise/resgistrations#new'
    get '/users/password', to: 'devise/passwords#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users
  get 'home/about'
  get 'jobs/salaries'
  resources :jobs do
    collection do
      get 'search'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "jobs#index"
end
