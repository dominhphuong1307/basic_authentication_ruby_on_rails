class CreateQuestionImages < ActiveRecord::Migration[6.0]
  def change
    create_table :question_images do |t|
      t.integer :question_id, foreign_key: true
      t.string :image
      t.timestamps
    end
  end
end
