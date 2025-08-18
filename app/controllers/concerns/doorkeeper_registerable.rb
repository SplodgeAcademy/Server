module DoorkeeperRegisterable
    extend ActiveSupport::Concern

    # Generates a unique refresh token
    def generate_refresh_token
        loop do
            # Generate refresh token
            token = SecureRandom.hex(32)
            # Return token as long as an identical token doesnt already exist
            break token unless Doorkeeper::AccessToken.exists?(refresh_token: token)
        end
    end

    # Adds refresh and access tokens to user
    def render_user(user, client_app, token_type = "Bearer")
        # Generate access token
        access_token = Doorkeeper::AccessToken.create(
            resource_owner_id: user.id,
            application_id: client_app.id,
            refresh_token: generate_refresh_token,
            expires_in: Doorkeeper.configuration.access_token_expires_in.to_i,
            scopes: ""
        )

        # Return user
        {
            id: user.id,
            email: user.email,
            name: user.name,
            access_token: access_token.token,
            token_type: token_type,
            expires_in: access_token.expires_in,
            refresh_token: access_token.refresh_token,
            created_at: access_token.created_at.to_time.to_i
        }
    end
end
