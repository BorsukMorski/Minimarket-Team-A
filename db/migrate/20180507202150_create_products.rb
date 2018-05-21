class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.integer :pages
      
      t.references :products, :merchant, foreign_key: true
      t.timestamps
    end
  end
end
