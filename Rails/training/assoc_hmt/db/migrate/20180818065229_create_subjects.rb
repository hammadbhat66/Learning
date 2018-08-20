class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
    	t.string :name
    	t.belongs_to :student, index: true
    	t.belongs_to :teacher, index: true

      t.timestamps
    end
  end
end
