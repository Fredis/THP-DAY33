class LandingPageController < ApplicationController
  
  def index
  	if !params[:p]
  		redirect_to 'https://www.thehackingproject.org'
  	end
  end

  def subscribing
    @subscriber_source = newsletter_params[:page]
  	render "index"
  	subscriber_mail = newsletter_params[:mail]
  	service_subscribing = NewsletterSubscribing.new
  	service_subscribing.perform(subscriber_mail, @subscriber_source)
  end

  private

  def newsletter_params
  	params.require(:newsletter).permit(:mail, :page)
  end

end
