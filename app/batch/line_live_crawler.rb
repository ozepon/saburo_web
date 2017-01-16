# line liveをクロールする
class LineLiveCrawler

  def self.get_channel_page
    LineLiver.transaction do
      livers = LineLiver.where(active:true)
        livers.each do |liver|

        url = "https://live.line.me/channels/#{liver.line_liver_uid}"

        # user偽造q
        user_agent = 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.63 Safari/537.36'
        charset = nil
        html = open(url, "User-Agent" => user_agent) do |f|
          charset = f.charset
          f.read
        end

        doc = Nokogiri::HTML.parse(html, nil, charset)
        data = doc.css('#data')
        data_json = JSON.load(data.attr('data-channel').value)

        # ここでDBに登録
        # line_live_pages
        liver.line_live_pages << LineLivePage.new(value: data_json, follower_count: data_json['followerCount'])
      end
    end
  end
end
