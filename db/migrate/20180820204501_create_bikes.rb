class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :photo
      t.boolean :modification

      t.belongs_to :user, foreign_key: true
      t.belongs_to :type, foreign_key: true

      t.timestamps
    end
  end
end
