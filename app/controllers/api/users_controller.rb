module Api
  class UsersController < ApplicationController
    def show
      options = {}
      options[:include] = [:objectives]
      render json: UserSerializer.new(user, options).serialized_json
    end

    def current_objective


      render json: ObjectiveSerializer.new(obj, options).serialized_json
    end

    private

    def user
      @user ||= begin
        UserCredential.find_by(email: params[:username]).user
      end
    end
  end
end
