class RemoveStudentIdFromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :student_id, :integer
  end
end
