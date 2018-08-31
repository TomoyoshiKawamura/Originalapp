  Rails.application.routes.draw do
  resources :maps
    devise_for :users
    root  'tweets#index'
    get   'tweets'      =>  'tweets#index'
    get   'tweets/new'  =>  'tweets#new'
    post  'tweets'      =>  'tweets#create'
    delete  'tweets/:id'  => 'tweets#destroy'
        patch   'tweets/:id'  => 'tweets#update'
        get   'tweets/:id/edit'  => 'tweets#edit'
    get   'users/:id'   =>  'users#show'    #Mypageへのルーティング
  end
