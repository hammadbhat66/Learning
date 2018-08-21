class CreateJoinTableTeacherStudent < ActiveRecord::Migration[5.2]
  def change
    create_join_table :Teachers, :Students do |t|
      t.index [:teacher_id, :student_id]
      t.index [:student_id, :teacher_id]
    end
  end
end
