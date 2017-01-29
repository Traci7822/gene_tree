class CreateFamilyUsers < ActiveRecord::Migration
  def change
    create_table :family_users do |t|
      t.integer :family_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
