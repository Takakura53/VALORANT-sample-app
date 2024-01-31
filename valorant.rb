
require 'net/http'
require 'uri'
require 'json'

API_KEY = 'XXXXXXXXXXXXXXXXXXXXXXXXX' #Enter  VALORANT APIKey
name = "YYYYYY" #Enter account name
region = "jp"
uri = URI.parse("https://ap.api.riotgames.com/val/content/v1/contents?api_key=RGAPI-XXXXXXXXXXXXXXXXXXXXXXXXX") #Parse the URI using ruby's uri library.
return_data = Net::HTTP.get(uri)
valorant_data = JSON.parse(return_data)

#agent
characters = valorant_data["characters"]
parsed_characters_data = JSON.parse(characters.to_json)
agent_name = parsed_characters_data.map { |agent| agent["localizedNames"]["ja-JP"] }

puts agent_name.inspect
# ["ゲッコー", "フェイド", "ブリーチ", "デッドロック", "レイズ", "チェンバー", "KAY/O", "スカイ", "サイファー", "ソーヴァ", "ソーヴァ", "キルジョイ", "ハーバー", "ヴァイパー", "フェニックス", "アストラ", "ブリムストーン", "ネオン", "ヨル", "セージ", "レイナ", "オーメン", "ジェット", "Null UI Data!"]

#MAP
maps = valorant_data["maps"]
parsed_maps_data = JSON.parse(maps.to_json)
map_name = parsed_maps_data.map { |map| map["localizedNames"]["ja-JP"] }

# ["アセント", "スプリット", "フラクチャー", "バインド", "ブリーズ", "ディストリクト", "カスバ", "ピアッツァ", "ロータス", "パール", "アイスボックス", "射撃場", "ヘイヴン"]
