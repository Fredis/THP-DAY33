require 'google-drive'

class DatabaseAssociation

  def initialize
    items = []
    CSV.foreach('link/to/file.csv', headers: true) do |row|
    items << Item.new(row.to_h)
    end
    Item.import(items)
  end 

end 
  