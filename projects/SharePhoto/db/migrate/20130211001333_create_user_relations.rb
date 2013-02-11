class CreateUserRelations < ActiveRecord::Migration
  def change
    create_table :user_relations do |t|
      t.integer :user_id
      t.integer :relation_id
      t.integer :enum

      t.timestamps
    end
  end
end
