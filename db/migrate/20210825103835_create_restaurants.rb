class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null:false
      t.string :address, null:false
      t.string :phone_number
      t.string :category

      t.timestamps
    end
  end
end
