class CreatePeoples < ActiveRecord::Migration[7.0]
  def change
    create_table :peoples do |t|
      t.string :name, :null => false
      t.integer :house_id, :null => false
      t.timestamps
    end
  end
end
