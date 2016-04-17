class CreateVotings < ActiveRecord::Migration
  def change
    create_table :votings do |t|
      t.integer :user_id, null: false
      t.integer :review_id, null: false
      t.integer :value, null: false

      t.timestamps null: false
    end
  end
end
