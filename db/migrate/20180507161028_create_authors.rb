class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :full_name
      t.integer :age
      t.timestamps
      
    end
  end
end
