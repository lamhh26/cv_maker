class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :skill
      t.float :level
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :skills, [:user_id, :created_at]
  end
end
