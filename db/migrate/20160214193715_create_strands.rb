class CreateStrands < ActiveRecord::Migration
  def change
    create_table  :strands do |t|
      t.string   :name

      t.timestamps null: false
    end
  end
end
