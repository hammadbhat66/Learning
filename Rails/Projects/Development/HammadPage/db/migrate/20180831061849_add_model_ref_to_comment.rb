class AddModelRefToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :model, foreign_key: true
  end
end
