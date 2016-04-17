class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date, null: false
      t.string :name, null: false
      t.integer :organization_id, null: false

      t.timestamps null: false
    end
  end
end
