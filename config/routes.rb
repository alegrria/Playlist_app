Rails.application.routes.draw do
    resources :users do
    collection { post :import }
  end

    resources :playlists do
    collection { post :import }

  end
  
    resources :mp3s do
    collection { post :import }
  end    

    root 'users#index'
end
