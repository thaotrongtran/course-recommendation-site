class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.integer :course_id
      t.references :review, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
