class MainRunner
  def self.update_2017_01_16
    LineLiverData.create_user
    LineLivePageData.create_seed_data
  end
end
