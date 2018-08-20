class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
    	t.string :name
    	t.boolean :available
    	t.integer :no_of_items
    	t.string :alias
      t.timestamps
    end
  end
end
