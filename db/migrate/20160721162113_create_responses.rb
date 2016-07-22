class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :text, presence: true
      t.integer :responseable_id, presence: true
      t.string :responseable_type, presence: true
      t.timestamps null: false

    end
  end
end
