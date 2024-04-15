Rails.application.routes.draw do
 
  devise_for :users
  
  authenticated :user do 
    root "welcome#home"
     resources :fruits
  end

  unauthenticated :user do 
    root "welcome#unregistered", as: :unauthenticated_root
  end

end
