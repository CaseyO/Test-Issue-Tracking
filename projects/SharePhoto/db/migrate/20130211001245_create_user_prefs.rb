class CreateUserPrefs < ActiveRecord::Migration
  def change
    create_table :user_prefs do |t|
      t.integer :id
      t.string :email
      t.boolean :chat

      t.timestamps
    end
  end
end
