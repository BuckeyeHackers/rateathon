class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :event_id, null: false
      t.integer :swag
      t.integer :food
      t.integer :environment
      t.integer :prizes
      t.integer :resources
      t.text :comment

      t.timestamps null: false
    end
  end
end
