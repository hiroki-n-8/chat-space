class CreateGroupUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :groups_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.timestamps
    end
  end
end
