class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.bigint :target_id
      t.string :target_type
      t.timestamps
    end
  end
end
