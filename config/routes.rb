Store::Application.routes.draw do
  resources :products do
    member do
      post 'add' => 'user_products#create'
    end
  end
  resources :users
  resource :sessions, only: [:create, :destroy, :new]


  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"
end
