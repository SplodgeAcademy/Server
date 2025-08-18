module Api
    module V1
        module Users
            class RegistrationsController < ApiController
                # Skip doorkeeper authorization when creating new user
                skip_before_action :doorkeeper_authorize!, only: %i[create]

                # Helper method to add access and refresh tokens to user
                include DoorkeeperRegisterable


                # Creates a new user
                def create
                    # Get doorkeeper application using client id from params
                    client_app = Doorkeeper::Application.find_by(uid: user_params[:client_id])

                    # Return error message if client id is incorrect
                    unless client_app
                        return render json: { error: I18n.t("doorkeeper.errors.messages.invalid_client") }, status: :unauthorized
                    end

                    # Remove client id from allowed params
                    allowed_params = user_params.except(:client_id)

                    # Create new user
                    user = User.new(allowed_params)

                    if user.save
                        # Return user if able to be saved
                        render json: render_user(user, client_app), status: :ok
                    else
                        # Return error message if not saved
                        render json: { errors: user.errors }, status: :unprocessable_entity
                    end
                end




                private

                # Only allow a list of trusted parameters through.
                def user_params
                    params.permit(:email, :name, :password, :client_id)
                end
            end
        end
    end
end
