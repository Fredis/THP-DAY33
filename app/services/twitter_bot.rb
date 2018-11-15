class twitterbot

	def config 
		@client = Twitter::Streaming::Client.new do |config|
  		config.consumer_key        = Rails.application.credentials.dig(:TWITTER_CONFIG_CONSUMER_KEY)
		config.consumer_secret     = Rails.application.credentials.dig(:TWITTER_CONSUMMER_SECRET)
		config.access_token        = Rails.application.credentials.dig(:TWITTER_ACCES_TOKEN)
		config.access_token_secret = Rails.application.credentials.dig(:CONFIG_ACCESS_TOKEN_SECRECT)
		end
	end 

	def auto_tweet_cto

	    @client.search("Recherche & CTO", result_type: "recent").take(25).each do |tweet|
        puts @client.update("@#{tweet.user.screen_name} Ne cherchez plus un CTO et apprenez vous même à développer votre application avec le bootcamp The Hacking Project ! Plus d'informations : http://bit.ly/2QKRt39"
        end
   end

   def auto_tweet_formation

	    @client.search("Apprendre à coder", result_type: "recent").take(25).each do |tweet|
        puts @client.update("@#{tweet.user.screen_name} Apprenez à coder en 3 mois avec la formation de the hacking project ! Plus d'informations : http://bit.ly/2QKfVSp"
        end
   end
 
	def perfom
	 	config 
	 	auto_tweet_cto
	 	auto_tweet_formation
	end

end 