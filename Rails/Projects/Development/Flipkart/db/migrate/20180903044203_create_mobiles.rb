	class CreateMobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :mobiles do |t|
      t.string :brand
      t.string :model_name
      t.money :cost
      t.text :brief

      t.timestamps
    end
  end
end
