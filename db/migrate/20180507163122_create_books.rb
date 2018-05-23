class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.references :author		
      t.string :title
      t.integer :page_amounth
    end
  end
end
