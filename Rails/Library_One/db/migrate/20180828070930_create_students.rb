class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.text :address
      t.string :institution
      t.string :fathers_name
      t.integer :phone_no
      t.string :gender

      t.timestamps
    end
  end
end
