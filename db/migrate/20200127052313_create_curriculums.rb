class CreateCurriculums < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculums do |t|
      t.references :course_id, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
