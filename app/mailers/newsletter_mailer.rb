class NewsletterMailer < ApplicationMailer
  default from: "juliette.thp@gmail.com"

  def email_newsletter(subscriber)
    @subscriber = subscriber
    mail(to: @subscriber.mail, subject: 'The Hacking Project : Newsletter du moment')
  end 

end
