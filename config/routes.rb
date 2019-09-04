Rails.application.routes.draw do
  get 'recommandations/new'
  get 'recommandations/create'
  get 'games/netflix', to: 'games#netflix', as: 'netflix'
  get 'games/resultnetflix', to: 'games#resultnetflix', as: 'resultnetflix'
  root to: 'pages#home'
    resources :forms, only:[:show, :new, :create] do
      resources :answers, only:[:new, :create]
    end
  resources :questions, only:[:show]
  resources :visitors, only:[:new, :create]
  resources :games, only: [:index, :show, :update]
  resources :jobs, only: [:index, :show]
  get 'games/:id/result', to: 'games#result', as: 'result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
