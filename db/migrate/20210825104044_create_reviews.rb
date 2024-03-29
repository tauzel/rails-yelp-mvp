class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :content
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
