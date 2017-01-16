require 'csv'
class LineLivePageData

  def self.create_seed_data
    LineLiver.transaction do
      CSV.foreach 'db/csv/line_live_page.csv', headers: true do |row|
        liver = LineLiver.find_by(line_liver_uid: row['line_liver_uid'])
        if liver.id
          time = Time.zone.local(row['create_year'].to_i,row['create_month'].to_i,row['create_day'].to_i)
          page = LineLivePage.new(
                                follower_count: row['follower_count'].to_i,
                                created_at: time,
                                updated_at: time)
          liver.line_live_pages << page
        end
      end
    end
  end
end
