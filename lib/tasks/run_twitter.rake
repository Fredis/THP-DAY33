desc "Lance le bot twitter"
task run_twitter: :environment do
	Twitterbot.new.perform
end