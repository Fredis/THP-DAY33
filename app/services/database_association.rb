require 'csv'

class DatabaseAssociation

  def save
    association = Association.new
    CSV.foreach('db/BDD.csv', headers: true) do |row|
    association = Association.create!(name: row[0],email: row[1])
    end
  end 

  def perform
    save
  end 


end 
  