class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :rating
      t.string :photo
      t.string :distance
      t.integer :difficulty

      t.belongs_to :type, foreign_key: true

      t.timestamps
    end
  end
end
