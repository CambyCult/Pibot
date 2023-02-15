class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.datetime :date
      t.text :content
      t.string :shift
      t.integer :user_id
      t.timestamps
    end
  end
end
