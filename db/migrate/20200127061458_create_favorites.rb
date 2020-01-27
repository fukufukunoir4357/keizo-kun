class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :leaning_site, foreign_key: true
      t.references :select_course, foreign_key: true
      t.references :curriculum, foreign_key: true

      t.timestamps
      t.index [:user_id, :leaning_site_id, :select_course_id, :curriculum_id], unique:true
    end
  end
end
