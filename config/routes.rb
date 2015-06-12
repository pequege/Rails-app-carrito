Depot::Application.routes.draw do
  devise_for :users
  resources :tutorials
  get 'admin' => 'admin#index'

  # controller :sessions do
  #   get  'login' => :new
  #   post 'login' => :create
  #   delete 'logout' => :destroy
  # end

  # get "sessions/create"
  # get "sessions/destroy"

  resources :user_tutorials do
    collection do
      get '/:tutorial_id/buy', to: :new, as: 'buy'
    end 
  end

  resources :users

  resources :products do
    get :who_bought, on: :member
  end

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store', via: :all
  end

end
