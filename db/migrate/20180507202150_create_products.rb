class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.integer :pages
      t.string :vendor

      t.timestamps
    end
  end
end
