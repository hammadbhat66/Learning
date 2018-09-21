class AddAdminToModel < ActiveRecord::Migration[5.2]
  def change
    add_column :models, :admin, :boolean
  end
end
