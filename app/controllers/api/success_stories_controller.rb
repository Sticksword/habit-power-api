module Api
  class SuccessStoriesController < ApplicationController
    def index
      top = SuccessStory.limit(1).first
      # include other stories by people you follow
      render json: SuccessStorySerializer.new(top, {}).serialized_json
    end

    def personal_feed_stories
      stories = current_user.following.map do |user|
        user.success_stories.limit(3)
      end.flatten
      Rails.logger.info stories.length
      sleep(2) # testing load indicator in flutter

      render json: SuccessStorySerializer.new(stories, {}).serialized_json
    end

    # ideally catered to preferences
    def suggested_stories
      already_following_ids = current_user.following.pluck(&:id)
      bad_algorithm_results = SuccessStory.where.not(user_id: already_following_ids).limit(3)

      render json: SuccessStorySerializer.new(bad_algorithm_results, {}).serialized_json
    end

    # ideally newspaper style
    def featured_stories
      already_following_ids = current_user.following.pluck(&:id)
      bad_algorithm_results = SuccessStory.where.not(user_id: already_following_ids).limit(3)

      render json: SuccessStorySerializer.new(bad_algorithm_results, {}).serialized_json
    end

    private

    def current_user
      @user ||= begin
        User.find(params[:user_id])
      end
    end
  end
end
