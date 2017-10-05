class TwitterSearcher
  
   def self.search(q)
     
     Rails.cache.fetch("#{q}", expires_in: 2.hours) do
       TwitterClient.search(q, result_type: "recent").take(100)
     end
     
   end
end