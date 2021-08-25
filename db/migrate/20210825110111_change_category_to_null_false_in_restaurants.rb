class ChangeCategoryToNullFalseInRestaurants < ActiveRecord::Migration[6.0]
  def change
    change_column_null :restaurants, :category, false
  end
end
