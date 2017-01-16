class AddFollowerCountToLineLivePage < ActiveRecord::Migration[5.0]
  def change
    add_column :line_live_pages, :follower_count, :integer
  end
end
