{"changed":true,"filter":false,"title":"webtoons_controller.rb","tooltip":"/app/controllers/webtoons_controller.rb","value":"class WebtoonsController < ApplicationController\n  def index\n    @webtoons = Webtoon.all\n  end\n  \n  def boxoffice\n  end\n  \n  def result\n    @date = params[:date]\n    # 영진위 api를 통해 해당 날짜의 boxoffice 정보를 보여준다\n    # 1.boxoffice 정보를 요청한다. (HTTParty)\n    # 2. 받아온 정보(json)를 파싱한다.\n    # 3. 파싱된 해시에서 원하는 정보를 꺼내어 보여준다.\n    base = \"http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?\"\n    key = \"c470d8e41ae224d53d7ecbc644dd5f88\"\n    date = params[:date].delete(\"-\") # 2018-07-02\n    url = base + \"key=\" + key + \"&\" + \"targetDt=\" + date \n    res = HTTParty.get(url) # response는 예약어로 ruby에서 이미 다른 걸 담아놨다.\n    data = JSON.parse(res.body)\n    # @title = data[\"boxOfficeResult\"][\"dailyBoxOfficeList\"][0][\"movieNm\"]\n    \n    @movies = []\n    data[\"boxOfficeResult\"][\"dailyBoxOfficeList\"].each do |movie|\n        @movies.push({\n            \"rank\" => movie[\"rank\"],\n            \"title\" => movie[\"movieNm\"],\n            \"sales\" => movie[\"salesAcc\"],\n            \"audi\" => movie[\"audiAcc\"]\n        })\n    end\n  end\n  \n  def stock\n    url = \n    #cEtc > div.section_features > div:nth-child(2) > div.info_kospi > ol > li:nth-child(1) > span.tit_rank > a\n  end\nend\n","undoManager":{"mark":88,"position":100,"stack":[[{"start":{"row":18,"column":65},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":413},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":19,"column":4},"end":{"row":19,"column":5},"action":"insert","lines":["ㅓ"],"id":414}],[{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"insert","lines":["냬"],"id":416}],[{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"remove","lines":["냬"],"id":418},{"start":{"row":19,"column":4},"end":{"row":19,"column":5},"action":"remove","lines":["ㅓ"]}],[{"start":{"row":19,"column":4},"end":{"row":19,"column":5},"action":"insert","lines":["H"],"id":419},{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"insert","lines":["S"]}],[{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"remove","lines":["S"],"id":420},{"start":{"row":19,"column":4},"end":{"row":19,"column":5},"action":"remove","lines":["H"]}],[{"start":{"row":19,"column":4},"end":{"row":19,"column":5},"action":"insert","lines":["J"],"id":421},{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"insert","lines":["S"]}],[{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"remove","lines":["S"],"id":422}],[{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"insert","lines":["S"],"id":423},{"start":{"row":19,"column":6},"end":{"row":19,"column":7},"action":"insert","lines":["O"]},{"start":{"row":19,"column":7},"end":{"row":19,"column":8},"action":"insert","lines":["N"]}],[{"start":{"row":19,"column":8},"end":{"row":19,"column":9},"action":"insert","lines":["."],"id":424},{"start":{"row":19,"column":9},"end":{"row":19,"column":10},"action":"insert","lines":["p"]},{"start":{"row":19,"column":10},"end":{"row":19,"column":11},"action":"insert","lines":["a"]},{"start":{"row":19,"column":11},"end":{"row":19,"column":12},"action":"insert","lines":["r"]},{"start":{"row":19,"column":12},"end":{"row":19,"column":13},"action":"insert","lines":["s"]},{"start":{"row":19,"column":13},"end":{"row":19,"column":14},"action":"insert","lines":["e"]}],[{"start":{"row":19,"column":14},"end":{"row":19,"column":16},"action":"insert","lines":["()"],"id":425}],[{"start":{"row":19,"column":15},"end":{"row":19,"column":16},"action":"insert","lines":["r"],"id":426},{"start":{"row":19,"column":16},"end":{"row":19,"column":17},"action":"insert","lines":["e"]},{"start":{"row":19,"column":17},"end":{"row":19,"column":18},"action":"insert","lines":["s"]},{"start":{"row":19,"column":18},"end":{"row":19,"column":19},"action":"insert","lines":["."]}],[{"start":{"row":19,"column":19},"end":{"row":19,"column":20},"action":"insert","lines":["b"],"id":427},{"start":{"row":19,"column":20},"end":{"row":19,"column":21},"action":"insert","lines":["o"]},{"start":{"row":19,"column":21},"end":{"row":19,"column":22},"action":"insert","lines":["d"]},{"start":{"row":19,"column":22},"end":{"row":19,"column":23},"action":"insert","lines":["y"]}],[{"start":{"row":19,"column":4},"end":{"row":19,"column":5},"action":"insert","lines":["d"],"id":428},{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"insert","lines":["a"]},{"start":{"row":19,"column":6},"end":{"row":19,"column":7},"action":"insert","lines":["t"]},{"start":{"row":19,"column":7},"end":{"row":19,"column":8},"action":"insert","lines":["a"]}],[{"start":{"row":19,"column":8},"end":{"row":19,"column":9},"action":"insert","lines":[" "],"id":429},{"start":{"row":19,"column":9},"end":{"row":19,"column":10},"action":"insert","lines":["="]}],[{"start":{"row":19,"column":10},"end":{"row":19,"column":11},"action":"insert","lines":[" "],"id":430}],[{"start":{"row":19,"column":31},"end":{"row":20,"column":0},"action":"insert","lines":["",""],"id":431},{"start":{"row":20,"column":0},"end":{"row":20,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":20,"column":4},"end":{"row":20,"column":5},"action":"insert","lines":["m"],"id":432},{"start":{"row":20,"column":5},"end":{"row":20,"column":6},"action":"insert","lines":["o"]},{"start":{"row":20,"column":6},"end":{"row":20,"column":7},"action":"insert","lines":["v"]},{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"insert","lines":["e"]},{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"insert","lines":["i"]}],[{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"remove","lines":["i"],"id":433},{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"remove","lines":["e"]}],[{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"insert","lines":["i"],"id":434},{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"insert","lines":["e"]}],[{"start":{"row":20,"column":4},"end":{"row":20,"column":5},"action":"insert","lines":["!"],"id":435}],[{"start":{"row":20,"column":4},"end":{"row":20,"column":5},"action":"remove","lines":["!"],"id":436}],[{"start":{"row":20,"column":4},"end":{"row":20,"column":5},"action":"insert","lines":["@"],"id":437}],[{"start":{"row":20,"column":10},"end":{"row":20,"column":11},"action":"insert","lines":[" "],"id":438},{"start":{"row":20,"column":11},"end":{"row":20,"column":12},"action":"insert","lines":["="]}],[{"start":{"row":20,"column":12},"end":{"row":20,"column":13},"action":"insert","lines":[" "],"id":439},{"start":{"row":20,"column":13},"end":{"row":20,"column":14},"action":"insert","lines":["{"]}],[{"start":{"row":20,"column":14},"end":{"row":22,"column":5},"action":"insert","lines":["","      ","    }"],"id":440}],[{"start":{"row":21,"column":6},"end":{"row":21,"column":7},"action":"insert","lines":["t"],"id":441},{"start":{"row":21,"column":7},"end":{"row":21,"column":8},"action":"insert","lines":["i"]},{"start":{"row":21,"column":8},"end":{"row":21,"column":9},"action":"insert","lines":["t"]},{"start":{"row":21,"column":9},"end":{"row":21,"column":10},"action":"insert","lines":["l"]},{"start":{"row":21,"column":10},"end":{"row":21,"column":11},"action":"insert","lines":["e"]},{"start":{"row":21,"column":11},"end":{"row":21,"column":12},"action":"insert","lines":[":"]}],[{"start":{"row":21,"column":12},"end":{"row":21,"column":13},"action":"insert","lines":[" "],"id":442}],[{"start":{"row":22,"column":4},"end":{"row":22,"column":5},"action":"remove","lines":["}"],"id":443},{"start":{"row":22,"column":2},"end":{"row":22,"column":4},"action":"remove","lines":["  "]},{"start":{"row":22,"column":0},"end":{"row":22,"column":2},"action":"remove","lines":["  "]},{"start":{"row":21,"column":13},"end":{"row":22,"column":0},"action":"remove","lines":["",""]},{"start":{"row":21,"column":12},"end":{"row":21,"column":13},"action":"remove","lines":[" "]},{"start":{"row":21,"column":11},"end":{"row":21,"column":12},"action":"remove","lines":[":"]},{"start":{"row":21,"column":10},"end":{"row":21,"column":11},"action":"remove","lines":["e"]},{"start":{"row":21,"column":9},"end":{"row":21,"column":10},"action":"remove","lines":["l"]},{"start":{"row":21,"column":8},"end":{"row":21,"column":9},"action":"remove","lines":["t"]},{"start":{"row":21,"column":7},"end":{"row":21,"column":8},"action":"remove","lines":["i"]},{"start":{"row":21,"column":6},"end":{"row":21,"column":7},"action":"remove","lines":["t"]},{"start":{"row":21,"column":4},"end":{"row":21,"column":6},"action":"remove","lines":["  "]},{"start":{"row":21,"column":2},"end":{"row":21,"column":4},"action":"remove","lines":["  "]},{"start":{"row":21,"column":0},"end":{"row":21,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":20,"column":14},"end":{"row":21,"column":0},"action":"remove","lines":["",""],"id":444},{"start":{"row":20,"column":13},"end":{"row":20,"column":14},"action":"remove","lines":["{"]}],[{"start":{"row":20,"column":12},"end":{"row":20,"column":13},"action":"remove","lines":[" "],"id":445}],[{"start":{"row":20,"column":12},"end":{"row":21,"column":0},"action":"remove","lines":["",""],"id":446},{"start":{"row":20,"column":11},"end":{"row":20,"column":12},"action":"remove","lines":["="]},{"start":{"row":20,"column":10},"end":{"row":20,"column":11},"action":"remove","lines":[" "]},{"start":{"row":20,"column":9},"end":{"row":20,"column":10},"action":"remove","lines":["e"]},{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"remove","lines":["i"]},{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"remove","lines":["v"]},{"start":{"row":20,"column":6},"end":{"row":20,"column":7},"action":"remove","lines":["o"]},{"start":{"row":20,"column":5},"end":{"row":20,"column":6},"action":"remove","lines":["m"]}],[{"start":{"row":20,"column":5},"end":{"row":20,"column":6},"action":"insert","lines":["t"],"id":447},{"start":{"row":20,"column":6},"end":{"row":20,"column":7},"action":"insert","lines":["i"]},{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"insert","lines":["t"]},{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"insert","lines":["l"]},{"start":{"row":20,"column":9},"end":{"row":20,"column":10},"action":"insert","lines":["e"]}],[{"start":{"row":20,"column":5},"end":{"row":20,"column":10},"action":"remove","lines":["title"],"id":448},{"start":{"row":20,"column":5},"end":{"row":20,"column":10},"action":"insert","lines":["title"]}],[{"start":{"row":20,"column":10},"end":{"row":20,"column":12},"action":"remove","lines":["  "],"id":449},{"start":{"row":20,"column":10},"end":{"row":21,"column":0},"action":"insert","lines":["",""]},{"start":{"row":21,"column":0},"end":{"row":21,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":22,"column":0},"end":{"row":22,"column":2},"action":"remove","lines":["  "],"id":450},{"start":{"row":21,"column":7},"end":{"row":22,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":20,"column":10},"end":{"row":20,"column":11},"action":"insert","lines":[" "],"id":451},{"start":{"row":20,"column":11},"end":{"row":20,"column":12},"action":"insert","lines":["="]}],[{"start":{"row":20,"column":12},"end":{"row":20,"column":13},"action":"insert","lines":[" "],"id":452}],[{"start":{"row":20,"column":13},"end":{"row":20,"column":14},"action":"insert","lines":["d"],"id":453},{"start":{"row":20,"column":14},"end":{"row":20,"column":15},"action":"insert","lines":["a"]},{"start":{"row":20,"column":15},"end":{"row":20,"column":16},"action":"insert","lines":["t"]},{"start":{"row":20,"column":16},"end":{"row":20,"column":17},"action":"insert","lines":["a"]}],[{"start":{"row":20,"column":17},"end":{"row":20,"column":19},"action":"insert","lines":["[]"],"id":454}],[{"start":{"row":20,"column":18},"end":{"row":20,"column":19},"action":"insert","lines":["b"],"id":455},{"start":{"row":20,"column":19},"end":{"row":20,"column":20},"action":"insert","lines":["o"]},{"start":{"row":20,"column":20},"end":{"row":20,"column":21},"action":"insert","lines":["x"]},{"start":{"row":20,"column":21},"end":{"row":20,"column":22},"action":"insert","lines":["o"]},{"start":{"row":20,"column":22},"end":{"row":20,"column":23},"action":"insert","lines":["d"]}],[{"start":{"row":20,"column":22},"end":{"row":20,"column":23},"action":"remove","lines":["d"],"id":456},{"start":{"row":20,"column":21},"end":{"row":20,"column":22},"action":"remove","lines":["o"]}],[{"start":{"row":20,"column":21},"end":{"row":20,"column":22},"action":"insert","lines":["O"],"id":457},{"start":{"row":20,"column":22},"end":{"row":20,"column":23},"action":"insert","lines":["f"]},{"start":{"row":20,"column":23},"end":{"row":20,"column":24},"action":"insert","lines":["i"]},{"start":{"row":20,"column":24},"end":{"row":20,"column":25},"action":"insert","lines":["i"]}],[{"start":{"row":20,"column":24},"end":{"row":20,"column":25},"action":"remove","lines":["i"],"id":458},{"start":{"row":20,"column":23},"end":{"row":20,"column":24},"action":"remove","lines":["i"]}],[{"start":{"row":20,"column":23},"end":{"row":20,"column":24},"action":"insert","lines":["f"],"id":459},{"start":{"row":20,"column":24},"end":{"row":20,"column":25},"action":"insert","lines":["i"]},{"start":{"row":20,"column":25},"end":{"row":20,"column":26},"action":"insert","lines":["c"]},{"start":{"row":20,"column":26},"end":{"row":20,"column":27},"action":"insert","lines":["e"]},{"start":{"row":20,"column":27},"end":{"row":20,"column":28},"action":"insert","lines":["e"]}],[{"start":{"row":20,"column":27},"end":{"row":20,"column":28},"action":"remove","lines":["e"],"id":460}],[{"start":{"row":20,"column":27},"end":{"row":20,"column":28},"action":"insert","lines":["R"],"id":461},{"start":{"row":20,"column":28},"end":{"row":20,"column":29},"action":"insert","lines":["e"]},{"start":{"row":20,"column":29},"end":{"row":20,"column":30},"action":"insert","lines":["s"]},{"start":{"row":20,"column":30},"end":{"row":20,"column":31},"action":"insert","lines":["u"]},{"start":{"row":20,"column":31},"end":{"row":20,"column":32},"action":"insert","lines":["l"]},{"start":{"row":20,"column":32},"end":{"row":20,"column":33},"action":"insert","lines":["t"]}],[{"start":{"row":20,"column":18},"end":{"row":20,"column":19},"action":"insert","lines":["\""],"id":462}],[{"start":{"row":20,"column":34},"end":{"row":20,"column":35},"action":"insert","lines":["\""],"id":463}],[{"start":{"row":20,"column":36},"end":{"row":20,"column":38},"action":"insert","lines":["[]"],"id":464}],[{"start":{"row":20,"column":37},"end":{"row":20,"column":57},"action":"insert","lines":["\"dailyBoxOfficeList\""],"id":465}],[{"start":{"row":21,"column":6},"end":{"row":21,"column":7},"action":"remove","lines":["d"],"id":466},{"start":{"row":21,"column":5},"end":{"row":21,"column":6},"action":"remove","lines":["n"]},{"start":{"row":21,"column":4},"end":{"row":21,"column":5},"action":"remove","lines":["e"]}],[{"start":{"row":21,"column":4},"end":{"row":21,"column":5},"action":"insert","lines":["e"],"id":467},{"start":{"row":21,"column":5},"end":{"row":21,"column":6},"action":"insert","lines":["n"]},{"start":{"row":21,"column":6},"end":{"row":21,"column":7},"action":"insert","lines":["d"]},{"start":{"row":21,"column":2},"end":{"row":21,"column":4},"action":"remove","lines":["  "]}],[{"start":{"row":20,"column":58},"end":{"row":20,"column":60},"action":"insert","lines":["[]"],"id":468}],[{"start":{"row":20,"column":59},"end":{"row":20,"column":60},"action":"insert","lines":["0"],"id":471}],[{"start":{"row":20,"column":61},"end":{"row":20,"column":73},"action":"insert","lines":["[\"movieNm\"],"],"id":472}],[{"start":{"row":20,"column":72},"end":{"row":20,"column":73},"action":"remove","lines":[","],"id":473}],[{"start":{"row":20,"column":72},"end":{"row":21,"column":0},"action":"insert","lines":["",""],"id":474},{"start":{"row":21,"column":0},"end":{"row":21,"column":4},"action":"insert","lines":["    "]},{"start":{"row":21,"column":4},"end":{"row":22,"column":0},"action":"insert","lines":["",""]},{"start":{"row":22,"column":0},"end":{"row":22,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":22,"column":4},"end":{"row":30,"column":3},"action":"insert","lines":["movies = []","data[\"boxOfficeResult\"][\"dailyBoxOfficeList\"].each do |movie|","    movies.push({","        \"rank\" => movie[\"rank\"],","        \"title\" => movie[\"movieNm\"],","        \"sales\" => movie[\"salesAcc\"],","        \"audi\" => movie[\"audiAcc\"]","    })","end"],"id":475}],[{"start":{"row":23,"column":0},"end":{"row":23,"column":2},"action":"insert","lines":["  "],"id":476},{"start":{"row":24,"column":0},"end":{"row":24,"column":2},"action":"insert","lines":["  "]},{"start":{"row":25,"column":0},"end":{"row":25,"column":2},"action":"insert","lines":["  "]},{"start":{"row":26,"column":0},"end":{"row":26,"column":2},"action":"insert","lines":["  "]},{"start":{"row":27,"column":0},"end":{"row":27,"column":2},"action":"insert","lines":["  "]},{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"insert","lines":["  "]},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":23,"column":0},"end":{"row":23,"column":2},"action":"insert","lines":["  "],"id":477},{"start":{"row":24,"column":0},"end":{"row":24,"column":2},"action":"insert","lines":["  "]},{"start":{"row":25,"column":0},"end":{"row":25,"column":2},"action":"insert","lines":["  "]},{"start":{"row":26,"column":0},"end":{"row":26,"column":2},"action":"insert","lines":["  "]},{"start":{"row":27,"column":0},"end":{"row":27,"column":2},"action":"insert","lines":["  "]},{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"insert","lines":["  "]},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":22,"column":4},"end":{"row":22,"column":5},"action":"insert","lines":["@"],"id":478}],[{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "],"id":479}],[{"start":{"row":30,"column":2},"end":{"row":30,"column":4},"action":"insert","lines":["  "],"id":480}],[{"start":{"row":20,"column":4},"end":{"row":20,"column":6},"action":"insert","lines":["# "],"id":481}],[{"start":{"row":24,"column":8},"end":{"row":24,"column":9},"action":"insert","lines":["@"],"id":482}],[{"start":{"row":24,"column":8},"end":{"row":24,"column":15},"action":"remove","lines":["@movies"],"id":483},{"start":{"row":24,"column":8},"end":{"row":24,"column":9},"action":"insert","lines":["M"]},{"start":{"row":24,"column":9},"end":{"row":24,"column":10},"action":"insert","lines":["o"]},{"start":{"row":24,"column":10},"end":{"row":24,"column":11},"action":"insert","lines":["v"]},{"start":{"row":24,"column":11},"end":{"row":24,"column":12},"action":"insert","lines":["i"]},{"start":{"row":24,"column":12},"end":{"row":24,"column":13},"action":"insert","lines":["e"]}],[{"start":{"row":24,"column":14},"end":{"row":24,"column":18},"action":"remove","lines":["push"],"id":484},{"start":{"row":24,"column":14},"end":{"row":24,"column":15},"action":"insert","lines":["c"]},{"start":{"row":24,"column":15},"end":{"row":24,"column":16},"action":"insert","lines":["r"]},{"start":{"row":24,"column":16},"end":{"row":24,"column":17},"action":"insert","lines":["e"]},{"start":{"row":24,"column":17},"end":{"row":24,"column":18},"action":"insert","lines":["a"]},{"start":{"row":24,"column":18},"end":{"row":24,"column":19},"action":"insert","lines":["t"]},{"start":{"row":24,"column":19},"end":{"row":24,"column":20},"action":"insert","lines":["e"]}],[{"start":{"row":22,"column":4},"end":{"row":22,"column":16},"action":"remove","lines":["@movies = []"],"id":485}],[{"start":{"row":30,"column":7},"end":{"row":31,"column":0},"action":"insert","lines":["",""],"id":489},{"start":{"row":31,"column":0},"end":{"row":31,"column":4},"action":"insert","lines":["    "]},{"start":{"row":31,"column":4},"end":{"row":32,"column":0},"action":"insert","lines":["",""]},{"start":{"row":32,"column":0},"end":{"row":32,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":32,"column":4},"end":{"row":32,"column":16},"action":"insert","lines":["@movies = []"],"id":490}],[{"start":{"row":32,"column":15},"end":{"row":32,"column":16},"action":"remove","lines":["]"],"id":491},{"start":{"row":32,"column":14},"end":{"row":32,"column":15},"action":"remove","lines":["["]}],[{"start":{"row":32,"column":14},"end":{"row":32,"column":15},"action":"insert","lines":["M"],"id":492},{"start":{"row":32,"column":15},"end":{"row":32,"column":16},"action":"insert","lines":["o"]},{"start":{"row":32,"column":16},"end":{"row":32,"column":17},"action":"insert","lines":["v"]},{"start":{"row":32,"column":17},"end":{"row":32,"column":18},"action":"insert","lines":["i"]},{"start":{"row":32,"column":18},"end":{"row":32,"column":19},"action":"insert","lines":["e"]},{"start":{"row":32,"column":19},"end":{"row":32,"column":20},"action":"insert","lines":["s"]}],[{"start":{"row":32,"column":20},"end":{"row":32,"column":21},"action":"insert","lines":["."],"id":493},{"start":{"row":32,"column":21},"end":{"row":32,"column":22},"action":"insert","lines":["a"]},{"start":{"row":32,"column":22},"end":{"row":32,"column":23},"action":"insert","lines":["l"]},{"start":{"row":32,"column":23},"end":{"row":32,"column":24},"action":"insert","lines":["l"]}],[{"start":{"row":32,"column":19},"end":{"row":32,"column":20},"action":"remove","lines":["s"],"id":494}],[{"start":{"row":24,"column":14},"end":{"row":24,"column":20},"action":"remove","lines":["create"],"id":495},{"start":{"row":24,"column":14},"end":{"row":24,"column":15},"action":"insert","lines":["p"]},{"start":{"row":24,"column":15},"end":{"row":24,"column":16},"action":"insert","lines":["u"]},{"start":{"row":24,"column":16},"end":{"row":24,"column":17},"action":"insert","lines":["s"]},{"start":{"row":24,"column":17},"end":{"row":24,"column":18},"action":"insert","lines":["t"]}],[{"start":{"row":24,"column":17},"end":{"row":24,"column":18},"action":"remove","lines":["t"],"id":496}],[{"start":{"row":24,"column":17},"end":{"row":24,"column":18},"action":"insert","lines":["h"],"id":497}],[{"start":{"row":24,"column":14},"end":{"row":24,"column":18},"action":"remove","lines":["push"],"id":498}],[{"start":{"row":24,"column":14},"end":{"row":24,"column":15},"action":"insert","lines":["c"],"id":499},{"start":{"row":24,"column":15},"end":{"row":24,"column":16},"action":"insert","lines":["r"]},{"start":{"row":24,"column":16},"end":{"row":24,"column":17},"action":"insert","lines":["e"]},{"start":{"row":24,"column":17},"end":{"row":24,"column":18},"action":"insert","lines":["a"]},{"start":{"row":24,"column":18},"end":{"row":24,"column":19},"action":"insert","lines":["t"]},{"start":{"row":24,"column":19},"end":{"row":24,"column":20},"action":"insert","lines":["e"]}],[{"start":{"row":22,"column":4},"end":{"row":22,"column":5},"action":"insert","lines":["@"],"id":504},{"start":{"row":22,"column":5},"end":{"row":22,"column":6},"action":"insert","lines":["m"]},{"start":{"row":22,"column":6},"end":{"row":22,"column":7},"action":"insert","lines":["o"]},{"start":{"row":22,"column":7},"end":{"row":22,"column":8},"action":"insert","lines":["v"]},{"start":{"row":22,"column":8},"end":{"row":22,"column":9},"action":"insert","lines":["i"]},{"start":{"row":22,"column":9},"end":{"row":22,"column":10},"action":"insert","lines":["e"]},{"start":{"row":22,"column":10},"end":{"row":22,"column":11},"action":"insert","lines":["s"]}],[{"start":{"row":22,"column":11},"end":{"row":22,"column":12},"action":"insert","lines":[" "],"id":505},{"start":{"row":22,"column":12},"end":{"row":22,"column":13},"action":"insert","lines":["="]}],[{"start":{"row":22,"column":13},"end":{"row":22,"column":14},"action":"insert","lines":[" "],"id":506}],[{"start":{"row":22,"column":14},"end":{"row":22,"column":16},"action":"insert","lines":["[]"],"id":507}],[{"start":{"row":24,"column":14},"end":{"row":24,"column":20},"action":"remove","lines":["create"],"id":508},{"start":{"row":24,"column":14},"end":{"row":24,"column":15},"action":"insert","lines":["p"]},{"start":{"row":24,"column":15},"end":{"row":24,"column":16},"action":"insert","lines":["u"]},{"start":{"row":24,"column":16},"end":{"row":24,"column":17},"action":"insert","lines":["s"]},{"start":{"row":24,"column":17},"end":{"row":24,"column":18},"action":"insert","lines":["t"]}],[{"start":{"row":24,"column":17},"end":{"row":24,"column":18},"action":"remove","lines":["t"],"id":509}],[{"start":{"row":24,"column":17},"end":{"row":24,"column":18},"action":"insert","lines":["h"],"id":510}],[{"start":{"row":24,"column":8},"end":{"row":24,"column":13},"action":"remove","lines":["Movie"],"id":511},{"start":{"row":24,"column":8},"end":{"row":24,"column":15},"action":"insert","lines":["@movies"]}],[{"start":{"row":30,"column":7},"end":{"row":32,"column":23},"action":"remove","lines":["","    ","    @movies = Movie.all"],"id":512}],[{"start":{"row":31,"column":5},"end":{"row":32,"column":0},"action":"insert","lines":["",""],"id":513},{"start":{"row":32,"column":0},"end":{"row":32,"column":2},"action":"insert","lines":["  "]},{"start":{"row":32,"column":2},"end":{"row":33,"column":0},"action":"insert","lines":["",""]},{"start":{"row":33,"column":0},"end":{"row":33,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":33,"column":2},"end":{"row":33,"column":109},"action":"insert","lines":["#cEtc > div.section_features > div:nth-child(2) > div.info_kospi > ol > li:nth-child(1) > span.tit_rank > a"],"id":514}],[{"start":{"row":32,"column":2},"end":{"row":33,"column":0},"action":"insert","lines":["",""],"id":515},{"start":{"row":33,"column":0},"end":{"row":33,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":33,"column":2},"end":{"row":33,"column":15},"action":"insert","lines":["def boxoffice"],"id":516}],[{"start":{"row":34,"column":109},"end":{"row":35,"column":0},"action":"insert","lines":["",""],"id":517},{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":35,"column":2},"end":{"row":35,"column":3},"action":"insert","lines":["e"],"id":523},{"start":{"row":35,"column":3},"end":{"row":35,"column":4},"action":"insert","lines":["n"]},{"start":{"row":35,"column":4},"end":{"row":35,"column":5},"action":"insert","lines":["d"]},{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"insert","lines":["  "],"id":524}],[{"start":{"row":34,"column":2},"end":{"row":34,"column":4},"action":"insert","lines":["  "],"id":525}],[{"start":{"row":33,"column":6},"end":{"row":33,"column":15},"action":"remove","lines":["boxoffice"],"id":526},{"start":{"row":33,"column":6},"end":{"row":33,"column":7},"action":"insert","lines":["s"]},{"start":{"row":33,"column":7},"end":{"row":33,"column":8},"action":"insert","lines":["t"]},{"start":{"row":33,"column":8},"end":{"row":33,"column":9},"action":"insert","lines":["o"]},{"start":{"row":33,"column":9},"end":{"row":33,"column":10},"action":"insert","lines":["c"]},{"start":{"row":33,"column":10},"end":{"row":33,"column":11},"action":"insert","lines":["k"]}],[{"start":{"row":33,"column":11},"end":{"row":34,"column":0},"action":"insert","lines":["",""],"id":527},{"start":{"row":34,"column":0},"end":{"row":34,"column":4},"action":"insert","lines":["    "]},{"start":{"row":34,"column":4},"end":{"row":34,"column":5},"action":"insert","lines":["u"]},{"start":{"row":34,"column":5},"end":{"row":34,"column":6},"action":"insert","lines":["r"]},{"start":{"row":34,"column":6},"end":{"row":34,"column":7},"action":"insert","lines":["l"]}],[{"start":{"row":34,"column":7},"end":{"row":34,"column":8},"action":"insert","lines":[" "],"id":528},{"start":{"row":34,"column":8},"end":{"row":34,"column":9},"action":"insert","lines":["="]}],[{"start":{"row":34,"column":9},"end":{"row":34,"column":10},"action":"insert","lines":[" "],"id":529}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":12,"column":28},"end":{"row":12,"column":28},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1530684501925}