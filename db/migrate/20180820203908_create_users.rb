class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
      t.string :profile_pic

      t.belongs_to :bike, foreign_key: true

      t.timestamps
    end
  end
end
