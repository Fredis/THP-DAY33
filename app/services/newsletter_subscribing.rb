class NewsletterSubscribing
  

	def mailchimp_add_a_mail_to_a_list(mail)
		mailchimp = Mailchimp::API.new(Rails.application.credentials.MAILCHIMP_API_KEY)
		mailchimp.lists.subscribe(Rails.application.credentials.MAILCHIMP_LIST_ID, 
      { "email" => mail
      })
	end

  def perform(mail)
  	mailchimp_add_a_mail_to_a_list(mail)
  end

end