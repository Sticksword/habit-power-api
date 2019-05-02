module Api
  class AuthenticationController < ApplicationController
    # probably wanna remove in prod, this is only to bypass the CSRF token requirement for POST requests for Rails
    skip_before_action :verify_authenticity_token

    def authenticate
      # NOTE: `.call` is a shortcut for `.new(args).call)`
      command = AuthenticateUser.call(params[:email], params[:password])

      if command.success?
        user_id, auth_token = command.result
        render json: { id: user_id, auth_token: auth_token }
      else
        error = {
          status: 401,
          title: 'Invalid username or password.',
          detail: command.errors[:user_authentication][0]
        }
        render json: { errors: [ error ] }, status: :unauthorized
      end
    end
  end
end
