class RemoveChoiceFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :choice
  end
end
