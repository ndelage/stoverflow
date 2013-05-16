class AddNotNullToApptAttributes < ActiveRecord::Migration
  def change
    change_column(:questions, :title, :string, :null => false)
    change_column(:questions, :content, :text, :null => false)
    change_column(:answers, :content, :text, :null => false)
    change_column(:votes, :value, :integer, :null => false)
  end
end
