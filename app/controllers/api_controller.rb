class ApiController < ApplicationController
    # Authenticate user when using api
    before_action :doorkeeper_authorize!

    # Skip checking CSRF token authenticity for api requests
    skip_before_action :verify_authenticity_token

    # Set reponse type to json
    respond_to :json




    private

    # Helper method to get current user from the doorkeeper token
    def current_user
        @current_user ||= User.find_by(id: doorkeeper_token[:resource_owner_id])
    end
end
