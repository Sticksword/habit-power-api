class Api::SuccessStoriesController < ApplicationController
  def index
    top = SuccessStory.limit(1)
    # include other stories by people you follow
    render json: SuccessStorySerializer.new(top, {}).serialized_json
  end
end
