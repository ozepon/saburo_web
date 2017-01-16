class RenameLiverIdToLineLiver < ActiveRecord::Migration[5.0]
  def change
    rename_column :line_livers, :line_liver_id, :line_liver_uid
  end
end
