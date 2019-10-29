class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
<<<<<<< HEAD
      t.integer :course_id
=======
      t.integer:course_id
>>>>>>> 2c17a0b
      t.integer :prof_id
      t.text :evaluation
      t.integer :prof_rating
      t.integer :workload_rating
      t.integer :support_rating

      t.timestamps
    end
  end
end
