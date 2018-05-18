class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.decimal :suggested_price
      t.string :status#, default: 'proposed'
                #jakie inne statusy? published, bought, paid, sent
      #tutaj ewentualnie jakaś jeszcze kolumna, jeśli potrzebna do oferty
      t.timestamps




    end
  end
end
