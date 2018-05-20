class CreateMerchants < ActiveRecord::Migration[5.1]
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
