class AddFieldParamlyToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :isparamly, :boolean 
  end
end
