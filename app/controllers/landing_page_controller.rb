class LandingPageController < ApplicationController
  
  def index
  end

  def subscribing
  	render "index"
  	subscriber_mail = newsletter_params[:mail]
  	service_subscribing = NewsletterSubscribing.new
  	service_subscribing.perform(subscriber_mail)
  end

  private

  def newsletter_params
  	params.require(:newsletter).permit(:mail)
  end

end
