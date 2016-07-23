class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :text, presence: true
      t.integer :responseable_id, presence: true
      t.string :responseable_type, presence: true
      t.integer :user_id, presence: true

      t.timestamps null: false
    end

    add_index :responses, [:responseable_type, :responseable_id]
  end
end
