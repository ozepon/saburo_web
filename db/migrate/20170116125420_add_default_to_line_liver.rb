class AddDefaultToLineLiver < ActiveRecord::Migration[5.0]
  def change
    change_column_default :line_livers, :active, true
  end
end
