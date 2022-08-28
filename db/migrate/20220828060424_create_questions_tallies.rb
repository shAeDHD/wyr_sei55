class CreateQuestionsTallies < ActiveRecord::Migration[5.2]
  def change
    create_table :questions_tallies do |t|
      t.integer :question_id
      t.integer :tally_id
    end
  end
end
