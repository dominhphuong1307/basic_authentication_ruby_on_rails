class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.references :user, foreign_key: true
      t.integer :score
      t.boolean :status
      t.datetime :test_time
      t.timestamps
    end
  end
end
