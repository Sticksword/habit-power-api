module Api
  class UsersController < ApplicationController
    def show
      options = {}
      options[:include] = [:objectives]
      render json: UserSerializer.new(user, options).serialized_json
    end

    def current_objective
      if user
        obj = user.objectives.last
        options = {}

        render json: ObjectiveSerializer.new(obj, options).serialized_json
      else
        render json: { :error => 'can not find' }, status: 404
      end
    end

    private

    def user
      @user ||= begin
        User.find_by(username: params[:username])
      end
    end
  end
end
