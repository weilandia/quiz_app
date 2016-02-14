class CreateQuestions < ActiveRecord::Migration
  def change
    create_table  :questions do |t|
      t.integer   :difficulty
      t.integer   :standard_id

      t.timestamps null: false
    end
  end
end
