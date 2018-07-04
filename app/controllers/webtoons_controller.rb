class WebtoonsController < ApplicationController
  def index
    @webtoons = Webtoon.all
  end
  
  def boxoffice
  end
  
  def result
    @date = params[:date]
    # 영진위 api를 통해 해당 날짜의 boxoffice 정보를 보여준다
    # 1.boxoffice 정보를 요청한다. (HTTParty)
    # 2. 받아온 정보(json)를 파싱한다.
    # 3. 파싱된 해시에서 원하는 정보를 꺼내어 보여준다.
    base = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?"
    key = "c470d8e41ae224d53d7ecbc644dd5f88"
    date = params[:date].delete("-") # 2018-07-02
    url = base + "key=" + key + "&" + "targetDt=" + date 
    res = HTTParty.get(url) # response는 예약어로 ruby에서 이미 다른 걸 담아놨다.
    data = JSON.parse(res.body)
    # @title = data["boxOfficeResult"]["dailyBoxOfficeList"][0]["movieNm"]
    
    @movies = []
    data["boxOfficeResult"]["dailyBoxOfficeList"].each do |movie|
        @movies.push({
            "rank" => movie["rank"],
            "title" => movie["movieNm"],
            "sales" => movie["salesAcc"],
            "audi" => movie["audiAcc"]
        })
    end
  end
end
