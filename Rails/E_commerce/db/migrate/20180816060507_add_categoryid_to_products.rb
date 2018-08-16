class AddCategoryidToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :categoryid, :integer
  end
end
