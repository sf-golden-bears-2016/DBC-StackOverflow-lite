class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id, presence: true
      t.integer :voteable_id, presence: true
      t.string :voteable_type, presence: true
      t.timestamps null: false

    end

    add_index :votes, [:voteable_type, :voteable_id]

  end
end
