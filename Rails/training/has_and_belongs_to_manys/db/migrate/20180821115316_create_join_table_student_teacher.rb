class CreateJoinTableStudentTeacher < ActiveRecord::Migration[5.2]
  def change
    create_join_table :students, :teachers do |t|
       t.index [:student_id, :teacher_id]
       t.index [:teacher_id, :student_id]
    end
  end
end
