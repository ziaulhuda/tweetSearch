require 'twitter_searcher'

class TweetsController < ApplicationController
  def index
    if !params[:q].blank?
      begin
        @tweets = TwitterSearcher::search(params[:q])
      rescue Twitter::Error::TooManyRequests => error
        @error = "Time limit reached. Please try later." 
      end
    end
  end
end
