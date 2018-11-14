class AssoMailer < ApplicationMailer
  default from: "juliette.thp@gmail.com"

  def acquistion_email(association)
    @association = association
    mail(to: @association.email, subject: 'Sample Email')
  end 
end
