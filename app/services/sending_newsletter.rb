class SendingNewsletter

  def send 
    subscribed = []
    i = 1
    n = Subscriber.last.id 
    while i <= n 
      if Subscriber.find_by(id: i) != nil
        subscribed << Subscriber.find_by(id: i)
      end 
    i += 1
    end 
    subscribed.each do |sub|
      NewsletterMailer.email_newsletter(sub).deliver_now
    end 
  end 

  def perform
    NewsletterSubscribing.new.get_mailchimp_members
    send 
  end 

end 