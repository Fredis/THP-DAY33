class NewsletterSubscribing
  

	def mailchimp_add_a_mail_to_a_list(mail, source)
		mailchimp = Mailchimp::API.new(Rails.application.credentials.MAILCHIMP_API_KEY)

    if source == "1"
      mailchimp_list_id = Rails.application.credentials.MAILCHIMP_FIRST_LIST_ID
    elsif source == "2"
      mailchimp_list_id = Rails.application.credentials.MAILCHIMP_SECOND_LIST_ID
    elsif source == "3"
      mailchimp_list_id = Rails.application.credentials.MAILCHIMP_THIRD_LIST_ID
    end

		mailchimp.lists.subscribe(mailchimp_list_id, 
      { :email => mail,
      	:double_optin => false
      })

	end

  def get_mailchimp_members
    mailchimp = Mailchimp::API.new(Rails.application.credentials.MAILCHIMP_API_KEY)
    mailchimp_array_first_list = mailchimp.lists.members(Rails.application.credentials.MAILCHIMP_FIRST_LIST_ID)['data']
    mailchimp_array_second_list = mailchimp.lists.members(Rails.application.credentials.MAILCHIMP_SECOND_LIST_ID)['data']
    mailchimp_array_third_list = mailchimp.lists.members(Rails.application.credentials.MAILCHIMP_THIRD_LIST_ID)['data']

    array_of_subscribers_first_list = get_the_members_list(mailchimp_array_first_list)
    array_of_subscribers_second_list = get_the_members_list(mailchimp_array_second_list)
    array_of_subscribers_third_list = get_the_members_list(mailchimp_array_third_list)

    Subscriber.destroy_all
    add_members_to_database(array_of_subscribers_first_list)
    add_members_to_database(array_of_subscribers_second_list)
    add_members_to_database(array_of_subscribers_third_list)
  end

  def get_the_members_list(mailchimp_array)
    array_of_subscribers = []
      mailchimp_array.each do |key, value|
      array_of_subscribers << key["email"]
    end
    return array_of_subscribers
  end

  def add_members_to_database(array_of_subscribers)
    array_of_subscribers.each do |element|
      Subscriber.create!(mail: element)
    end
  end

  def perform(mail, source)
  	mailchimp_add_a_mail_to_a_list(mail, source)
  end

end