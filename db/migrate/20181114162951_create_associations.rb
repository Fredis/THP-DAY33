class CreateAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :associations do |t|
      t.string :name
      t.string :email
      t.string :flag

      t.timestamps
    end
  end
end
