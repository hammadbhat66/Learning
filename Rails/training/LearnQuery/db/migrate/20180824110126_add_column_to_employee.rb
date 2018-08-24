class AddColumnToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :good, :boolean
  end
end
