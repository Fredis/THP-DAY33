desc "Envoie d'une newsletter"
task send_newsletter: :environment do
	SendingNewsletter.new.perform
end