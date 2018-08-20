class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.integer :distance
      t.string :description
      t.string :sponsor
      t.integer :price

      t.belongs_to :type, foreign_key: true

      t.timestamps
    end
  end
end
