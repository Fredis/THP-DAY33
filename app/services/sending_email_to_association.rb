class SendingEmailToAssociation

  def send 
    #AssoMailer.acquisition_email(Association.find_by(id:610)).deliver_now
    associations = []
    associations << Association.last
    associations << Association.find_by(id:610)
    associations.each do |association|
      if association.flag == nil 
        AssoMailer.acquisition_email(association).deliver_now
        association.update(flag: "ok")
      end 
    end 

    end 

  def perform
    send 
  end 

end 
  # associations = []
  # associations << Association.all
    # associations.each do |association|
    # if association.flag == nil
    # AssoMailer.acquisition_email(association).deliver_now
    #  association.update(flag = "ok")
    #  end 
    #end 

  