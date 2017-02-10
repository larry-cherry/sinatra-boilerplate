class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, limit: 64
      t.string :email, null: false, limit: 64
      t.string :hashed_password

      t.timestamps(null: false)
    end
  end
end
