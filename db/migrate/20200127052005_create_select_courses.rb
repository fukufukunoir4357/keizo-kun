class CreateSelectCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :select_courses do |t|
      t.string :name

      t.timestamps
    end
  end
end
