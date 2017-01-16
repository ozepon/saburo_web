class CreateLineLivers < ActiveRecord::Migration[5.0]
  def change
    create_table :line_livers do |t|
      t.string :name
      t.integer :line_liver_id
      t.boolean :active

      t.timestamps
    end
  end
end
