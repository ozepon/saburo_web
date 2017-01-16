class CreateLineLivePages < ActiveRecord::Migration[5.0]
  def change
    create_table :line_live_pages do |t|
      t.text :value
      t.references :line_liver, foreign_key: true

      t.timestamps
    end
  end
end
