class PagesController < ApplicationController
    # before_action :authenticate_user!, except: %i[ home ]

    def home
    end

    def info
        # Get doorkeeper application
        @application = Doorkeeper::Application.where(name: "Webapp").first

        # Set attributes to be displayed on info page
        if @application
            @application = {
                name: @application.name,
                client_id: @application.uid,
                client_secret: @application.secret
            }
        end
    end
end
