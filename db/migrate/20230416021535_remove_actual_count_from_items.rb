class RemoveActualCountFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :actual_count, :integer
  end
end
