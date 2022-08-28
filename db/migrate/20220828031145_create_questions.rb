class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.boolean :choice
      t.text :opt_A
      t.text :opt_B

      t.timestamps
    end
  end
end
