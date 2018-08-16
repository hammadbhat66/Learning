class RemoveCategoryidFromProducts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :products ,:categoryid ,:integer
  end
end
