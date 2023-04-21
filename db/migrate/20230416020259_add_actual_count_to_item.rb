class AddActualCountToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :actual_count, :integer
  end
end
