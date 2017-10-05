require 'twitter_searcher'

class TweetsController < ApplicationController
  def index
    if !params[:q].blank?
      @tweets = TwitterSearcher::search(params[:q])
    end
  end
end
