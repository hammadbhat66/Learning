class AddRefcategoriesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :categories, foreign_key: true
  end
end
