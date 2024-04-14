Rails.application.routes.draw do
  resources :fruits
  devise_for :users
  
  authenticated :user do 
    root "welcome#home"
  end

  unauthenticated :user do 
    root "welcome#unregistered", as: :unauthenticated_root
  end

end
