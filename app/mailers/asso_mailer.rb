class AssoMailer < ApplicationMailer
  default from: "juliette.thp@gmail.com"

  def acquisition_email(association)
    @association = association
    mail(to: @association.email, subject: 'Bonjour!')
    @url = 'http://bit.ly/2QKIsar'
  end 
end
