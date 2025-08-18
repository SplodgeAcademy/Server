Rails.application.routes.draw do
    # Info page
    get "info", to: "pages#info"

    # Quiz routes
    resources :multiple_choices
    resources :open_clozes
    resources :word_formations
    resources :keyword_transformations

    # User routes
    devise_for :users, controllers: {
        sessions: "users/sessions",
        registrations: "users/registrations"
    }

    # Profile page
    get "/u/:id", to: "users#profile", as: "user"

    # Doorkeeper for api requests
    use_doorkeeper

    # Adding api routes
    draw :api

    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
    # Can be used by load balancers and uptime monitors to verify that the app is live.
    get "up" => "rails/health#show", as: :rails_health_check

    # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
    # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
    # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

    # Defines the root path route ("/")
    root "pages#home"
end
