class CreateArgonautes < ActiveRecord::Migration[7.0]
  def change
    create_table :argonautes do |t|

      t.timestamps
    end
  end
end
