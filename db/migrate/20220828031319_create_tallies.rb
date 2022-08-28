class CreateTallies < ActiveRecord::Migration[5.2]
  def change
    create_table :tallies do |t|
      t.integer :user_id
      t.integer :question_id
      t.boolean :question_answer

      t.timestamps
    end
  end
end
