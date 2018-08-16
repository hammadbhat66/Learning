class AddTypeToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :type, :string
    add_column :categories, :subcat ,:string
  end
end
