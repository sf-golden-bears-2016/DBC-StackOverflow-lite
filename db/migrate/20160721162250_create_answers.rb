class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id, presence: true
      t.integer :user_id, presence: true
      t.text :text, presence: true
      t.integer :favorite, presence: true

      t.timestamps null: false
    end
  end
end
