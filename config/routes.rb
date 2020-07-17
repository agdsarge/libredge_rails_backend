Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    Rails.application.routes.draw do
        namespace :api do
            namespace :v1 do
                get '/users', to: 'users#index'
                get '/games', to: 'games#index'
                get '/games/:id', to: 'games#show'
            end
        end
    end


end
