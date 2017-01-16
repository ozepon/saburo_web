require 'csv'
class LineLiverData

  # 存在しないline_linverを作成
  def self.create_user
    CSV.foreach 'db/csv/line_liver.csv', headers: true do |row|
      line_liver = LineLiver.find_or_initialize_by(name: row['name'], line_liver_uid: row['line_liver_uid'].to_i)
      line_liver.save! unless line_liver.id
    end
  end
end
