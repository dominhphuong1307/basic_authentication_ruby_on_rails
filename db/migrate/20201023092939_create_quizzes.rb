class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text  :array_questions 
      t.text  :array_user_choices
      t.timestamps
    end
  end
end
