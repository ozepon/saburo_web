class CreateNagayoshiBookmarkLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :nagayoshi_bookmark_logs do |t|
      t.string :name

      t.timestamps
    end
  end
end
