require 'rails_helper'
require 'twitter_searcher'

RSpec.describe TwitterSearcher do
  let!(:results){TwitterSearcher::search("Rspec testing")}
  
  context "search for tweets" do
    
    it "should have tweets found" do
      expect(results).not_to be_empty
    end
    
    it "should not have more than 100 results" do
      expect(results.count).to be < 101
    end
  end
 
end