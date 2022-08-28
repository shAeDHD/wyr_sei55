class CreateHashtagsQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :hashtags_questions do |t|
      t.integer :hashtag_id
      t.integer :question_id
    end
  end
end
