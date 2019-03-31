module Api
  class UsersController < ApplicationController
    def show
      options = {}
      options[:include] = [:objectives]
      render json: UserSerializer.new(user, options).serialized_json
    end

    private

    def user
      @user ||= begin
        UserCredential.find_by(username: params[:username]).user
      end
    end
  end
end
