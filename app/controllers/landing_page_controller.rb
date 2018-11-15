class LandingPageController < ApplicationController
  
  def index
  	if !params[:p]
  		redirect_to 'https://www.thehackingproject.org'
  	end
  end

  def subscribing
    subscriber_source = newsletter_params[:page]
  	redirect_to "/?p=#{newsletter_params[:page]}"

  	subscriber_mail = newsletter_params[:mail]
    puts "////"
    puts "avant le code"
    puts subscriber_mail.inspect
    
    if subscriber_mail == "" || subscriber_mail !~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      flash[:succes] = "Votre adresse e-mail n'est pas valide."
    else
      service_subscribing = NewsletterSubscribing.new
      service_subscribing.perform(subscriber_mail, subscriber_source)
      flash[:succes] = "Vous allez recevoir un email dans votre messagerie."
    end
  end

  private

  def newsletter_params
  	params.require(:newsletter).permit(:mail, :page)
  end

end
