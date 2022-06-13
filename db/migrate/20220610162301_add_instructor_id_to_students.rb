class AddInstructorIdToStudents < ActiveRecord::Migration[6.1]
  def change
    change_table :students do |t|
      t.integer :instructor_id
    end
  end
end
