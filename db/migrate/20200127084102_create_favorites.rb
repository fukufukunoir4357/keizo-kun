class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :site, foreign_key: true
      t.references :course, foreign_key: true
      t.references :curriculum, foreign_key: true

      t.timestamps
      t.index [:user_id, :site_id, :course_id], unique: true
    end
  end
end
