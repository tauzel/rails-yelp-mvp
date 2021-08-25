class ChangeContentToNullFalseInReviews < ActiveRecord::Migration[6.0]
  def change
    change_column_null :reviews, :content, false
  end
end
