class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
    	t.string :name
    	t.integer :cost
    	t.integer :remaining
    	t.string :aliase
    	t.integer :category_id

      t.timestamps
    end
  end
end
