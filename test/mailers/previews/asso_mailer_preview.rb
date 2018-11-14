# Preview all emails at http://localhost:3000/rails/mailers/asso_mailer
class AssoMailerPreview < ActionMailer::Preview

  def acquisition_mail_preview
    ExampleMailer.acquisition_email(Association.first)
  end
end


end
