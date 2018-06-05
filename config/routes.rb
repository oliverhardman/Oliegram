Rails.application.routes.draw do

  devise_for :users
    resources :posts do 
      member do 
        put "like" => "posts#like"
        put "dislike" => "posts#dislike"
      end
    end

    root 'posts#index', as: 'post/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
