class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table  :quizzes do |t|
      t.integer   :student_id
      t.integer   :length
      

      t.timestamps null: false
    end
  end
end
