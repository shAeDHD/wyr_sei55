class AddThumbnailImageToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :thumbnail_image, :string
  end
end
