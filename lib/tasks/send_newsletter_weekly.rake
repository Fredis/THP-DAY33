desc "Envoie la newsletter chaque semaine"
task send_newsletter: :environment do
  SendingNewsletter.new.perform
end