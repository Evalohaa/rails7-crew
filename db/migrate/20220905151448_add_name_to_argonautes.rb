class AddNameToArgonautes < ActiveRecord::Migration[7.0]
  def change
    add_column :argonautes, :name, :text
  end
end
