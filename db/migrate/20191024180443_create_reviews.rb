class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :course_name
      t.string :professor
      t.text :evaluation
      t.integer :professor_rating
      t.integer :workload_rating
      t.integer :support_rating

      t.timestamps
    end
  end
end
