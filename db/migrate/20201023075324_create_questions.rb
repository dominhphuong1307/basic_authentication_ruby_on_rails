class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :content
      t.boolean :isparamly
      
      t.timestamps
    end
  end
end
