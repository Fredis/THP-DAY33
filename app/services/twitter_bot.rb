

class twitter_bot


	def config 

		client = Twitter::Streaming::Client.new do |config|
  		config.consumer_key        = Rails.application.credentials.dig(:TWITTER_CONFIG_CONSUMER_KEY)
		config.consumer_secret     = Rails.application.credentials.dig(:TWITTER_CONSUMMER_SECRET)
		config.access_token        = Rails.application.credentials.dig(:TWITTER_ACCES_TOKEN)
		config.access_token_secret = Rails.application.credentials.dig(:CONFIG_ACCESS_TOKEN_SECRECT)
	end 

	def auto_tweet_cto

	    @twitter_instance.search("Recherche CTO", result_type: "recent").take(25).each do |tweet|
        puts @client.update("Ne cherchez plus un CTO et apprenez vous même à développer votre application avec le bootcamp The Hacking Project ! Plus d'informations : https://thp-nantes-hacking-pro.herokuapp.com/", in_reply_to_tweet_id:tweet.user.id)
   end

   def auto_tweet_formation

	    @twitter_instance.search("Apprendre à coder", result_type: "recent").take(25).each do |tweet|
        puts @client.update("Apprenez à coder en 3 mois avec la formation de the hacking project ! Plus d'informations : https://thp-nantes-hacking-pro.herokuapp.com/", in_reply_to_tweet_id:tweet.user.id)
   end
 
	def perfom
	 	config 
	 	auto_tweet_cto
	 	auto_tweet_formation
	end

end 