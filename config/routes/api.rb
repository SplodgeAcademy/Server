namespace :api do
    namespace :v1 do
        # User registration route
        scope :users, module: :users do
            post "/", to: "registrations#create", as: :user_registration
        end

        # Quiz routes
        resources :multiple_choices
        resources :open_clozes
        resources :word_formations
        resources :keyword_transformations
    end
end

scope :api do
    scope :v1 do
        use_doorkeeper do
            skip_controllers :authorizations, :applications, :authorized_applications
        end
    end
end
