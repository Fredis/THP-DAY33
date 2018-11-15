class SendingEmailToAssociation

  def send 
    AssoMailer.acquisition_email(Association.find_by(id:610)).deliver_now
    end 

  def perform
    send 
  end 

end 

 # associations = Association.all
    # associations.each do |association|
    # if association.flag = nil
    # AssoMailer.acquisition_email(association).deliver_now
    #associations = []
    #associations << Association.find_by(id:610)
    #associations << Association.last 
    #associations.each do |association|
    #  if association.flag = nil     
    #  AssoMailer.acquisition_email(association).deliver_now
    #  association.flag = "ok"
    #  end 
    #end 