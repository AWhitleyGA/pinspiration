Rails.application.routes.draw do
  get 'boards/index'

  get 'boards/show'

  get 'boards/new'

  get 'boards/create'

  get 'boards/edit'

  get 'boards/update'

  get 'boards/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :boards do
      resources :pins
    end
  end
  resources :pins do
    resources :comments
  end
end
