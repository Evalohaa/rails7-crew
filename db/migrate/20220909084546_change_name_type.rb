class ChangeNameType < ActiveRecord::Migration[7.0]
  def change
    change_column :argonautes, :name, :string
  end
end
